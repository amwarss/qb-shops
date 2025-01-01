local QBCore = exports["qb-core"]:GetCoreObject()
local PlayerData = QBCore.Functions.GetPlayerData()
local inChips = false
local currentShop, currentData
local pedSpawned = false
local listen = false
local ShopPed = {}
local NewZones = {}
-- Functions
local function createBlips()
    if pedSpawned then return end

    for store in pairs(Config.Locations) do
        if Config.Locations[store]["showblip"] then
            local StoreBlip = AddBlipForCoord(Config.Locations[store]["coords"]["x"], Config.Locations[store]["coords"]["y"], Config.Locations[store]["coords"]["z"])
            SetBlipSprite(StoreBlip, Config.Locations[store]["blipsprite"])
            SetBlipScale(StoreBlip, Config.Locations[store]["blipscale"])
            SetBlipDisplay(StoreBlip, 4)
            SetBlipColour(StoreBlip, Config.Locations[store]["blipcolor"])
            SetBlipAsShortRange(StoreBlip, true)
            BeginTextCommandSetBlipName("STRING")
            AddTextComponentSubstringPlayerName(Config.Locations[store]["label"])
            EndTextCommandSetBlipName(StoreBlip)
        end
    end
end

local function tableCheck(val, list)
    for _, v in ipairs(list) do
        if v == val then return true end
    end
    return false
end

local function hasLicense(licenses, playerLicenses)
    for _, license in ipairs(licenses) do
        if playerLicenses[license] then return true end
    end
    return false
end

local function openShop(shop, data)
    local shop = data.products
    
    SendNUIMessage({
        action = "OPEN",
        data = {
            marketName = Config.Products[shop].name,
            marketCategory = Config.Products[shop].category,
            marketItemList = Config.Products[shop].itemList,
            marketCategoryList = Config.Products[shop].categoryList,
            marketJob = Config.Products[shop].job,
            shared = QBCore.Shared.Items,
        }
    })
    SetNuiFocus(true, true)
end

local function openPoliceShop()
    local shop = "police"
    SendNUIMessage({
        action = "OPEN",
        data = {
            marketName = Config.Products[shop].name,
            marketCategory = Config.Products[shop].category,
            marketItemList = Config.Products[shop].itemList,
            marketCategoryList = Config.Products[shop].categoryList,
            marketJob = Config.Products[shop].job,
            shared = QBCore.Shared.Items,
        }
    })
    SetNuiFocus(true, true)
end

Citizen.CreateThread(function()
    exports['qb-target']:AddTargetBone({
        "boot",
    }, {
        options = {
            {
                label = "Open Police Shop",
                action = function(entity)
                    local playerData = QBCore.Functions.GetPlayerData()
                    local playerJob = playerData.job and playerData.job.name or nil
                    local vehicleModel = GetEntityModel(entity)
                    local vehicleName = GetDisplayNameFromVehicleModel(vehicleModel):lower()
                    local isPoliceVehicle = false
                    for _, allowedVehicle in ipairs(Config.PoliceVehicles) do
                        if vehicleName == allowedVehicle:lower() then
                            isPoliceVehicle = true
                            break
                        end
                    end
                    if playerJob == "police" and isPoliceVehicle then
                        openPoliceShop()
                    else
                        QBCore.Functions.Notify("This shop is only for police officers with a valid police vehicle!", "error")
                    end
                end,
                icon = "fas fa-store",
            }
        },
        distance = 2.0,
        canInteract = function(entity, distance)
            local playerData = QBCore.Functions.GetPlayerData()
            local playerJob = playerData.job and playerData.job.name or nil
            if playerJob ~= "police" then
                return false
            end
            local vehicleModel = GetEntityModel(entity)
            local vehicleName = GetDisplayNameFromVehicleModel(vehicleModel):lower()
            for _, allowedVehicle in ipairs(Config.PoliceVehicles) do
                if vehicleName == allowedVehicle:lower() then
                    return true
                end
            end
            return false
        end
    })
end)

exports("OpenShop", function(data)
    SendNUIMessage({
        action = "OPEN",
        data = {
            marketName = data.name,
            marketCategory = data.category,
            marketItemList = data.itemList,
            marketCategoryList = data.categoryList,
            marketJob = data.job,
            shared = QBCore.Shared.Items,
        }
    })
    SetNuiFocus(true, true)
end)

RegisterNetEvent("qb-shops:cl:OpenShop", function(data)
    SendNUIMessage({
        action = "OPEN",
        data = {
            marketName = data.name,
            marketCategory = data.category,
            marketItemList = data.itemList,
            marketCategoryList = data.categoryList,
            marketJob = data.job,
            shared = QBCore.Shared.Items,
        }
    })
    SetNuiFocus(true, true)
end)

local function listenForControl()
    if listen then return end
    CreateThread(function()
        listen = true
        while listen do
            if IsControlJustPressed(0, 38) then -- E
                TriggerServerEvent('qb-shops:server:SetShopList')
                if inChips then
                    exports["qb-core"]:KeyPressed()
                    TriggerServerEvent("qb-shops:server:sellChips")
                else
                    exports["qb-core"]:KeyPressed()
                    openShop(currentShop, currentData)
                end
                listen = false
                break
            end
            Wait(0)
        end
    end)
end

local function createPeds()
    if pedSpawned then return end

    for k, v in pairs(Config.Locations) do
        local current = type(v["ped"]) == "number" and v["ped"] or joaat(v["ped"])

        RequestModel(current)
        while not HasModelLoaded(current) do
            Wait(0)
        end

        ShopPed[k] = CreatePed(0, current, v["coords"].x, v["coords"].y, v["coords"].z-1, v["coords"].w, false, false)
        TaskStartScenarioInPlace(ShopPed[k], v["scenario"], 0, true)
        FreezeEntityPosition(ShopPed[k], true)
        SetEntityInvincible(ShopPed[k], true)
        SetBlockingOfNonTemporaryEvents(ShopPed[k], true)

        if Config.UseTarget then
            -- exports['qb-target']:AddTargetEntity(ShopPed[k], {
            --     options = {
            --         {
            --             label = v["targetLabel"],
            --             icon = v["targetIcon"],
            --             item = v["item"],
            --             action = function()
            --                 openShop(k, Config.Locations[k])
            --             end,
            --             job = v.requiredJob,
            --             gang = v.requiredGang
            --         }
            --     },
            --     distance = 2.0
            -- })
            exports.interact:AddEntityInteraction({
                netId = ShopPed[k],
                distance = 4.0, -- optional
                interactDst = 3.0, -- optional
                options = {
                    {
                        label = v["targetLabel"],
                        icon = v["targetIcon"],
                        item = v["item"],
                        action = function()
                            openShop(k, Config.Locations[k])
                        end,
                        job = v.requiredJob,
                        gang = v.requiredGang
                    },
                }
            })
        end
    end
    pedSpawned = true
end

local function deletePeds()
    if not pedSpawned then return end

    for _, v in pairs(ShopPed) do
        DeletePed(v)
    end
    pedSpawned = false
end

-- Events
RegisterNetEvent("qb-shops:client:UpdateShop", function(shop, itemData, amount)
    TriggerServerEvent("qb-shops:server:UpdateShopItems", shop, itemData, amount)
end)

RegisterNetEvent("qb-shops:client:SetShopItems", function(shop, shopProducts)
    Config.Locations[shop]["products"] = shopProducts
end)

RegisterNetEvent("qb-shops:client:RestockShopItems", function(shop, amount)
    if not Config.Locations[shop].products then return end
    for k in pairs(Config.Locations[shop].products) do
        Config.Locations[shop].products[k].amount = Config.Locations[shop]["products"][k].amount + amount
    end
end)

RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
    PlayerData = QBCore.Functions.GetPlayerData()
    createBlips()
    createPeds()
    TriggerServerEvent('qb-shops:server:SetShopList')
end)

RegisterNetEvent('QBCore:Client:OnPlayerUnload', function()
    deletePeds()
    PlayerData = nil
end)

RegisterNetEvent('QBCore:Player:SetPlayerData', function(val)
    PlayerData = val
end)

AddEventHandler('onResourceStart', function(resourceName)
    if GetCurrentResourceName() ~= resourceName then return end
    createBlips()
    createPeds()
    TriggerServerEvent('qb-shops:server:SetShopList')
end)

AddEventHandler('onResourceStop', function(resourceName)
    if GetCurrentResourceName() ~= resourceName then return end

    deletePeds()
end)

-- Threads
if not Config.UseTarget then
    CreateThread(function()
        for shop in pairs(Config.Locations) do
            NewZones[#NewZones+1] = CircleZone:Create(vector3(Config.Locations[shop]["coords"]["x"], Config.Locations[shop]["coords"]["y"], Config.Locations[shop]["coords"]["z"]), Config.Locations[shop]["radius"], {
                useZ = true,
                debugPoly = false,
                name = shop,
            })
        end

        local combo = ComboZone:Create(NewZones, {name = "RandomZOneName", debugPoly = false})
        combo:onPlayerInOut(function(isPointInside, _, zone)
            if isPointInside then
                currentShop = zone.name
                TriggerServerEvent('qb-shops:server:SetShopList')
                currentData = Config.Locations[zone.name]
                exports["qb-core"]:DrawText(Lang:t("info.open_shop"))
                listenForControl()
            else
                exports["qb-core"]:HideText()
                listen = false
            end
        end)
    end)
end

CreateThread(function()
    for k1, v in pairs(Config.Locations) do
        if v.requiredJob and next(v.requiredJob) then
            for k in pairs(v.requiredJob) do
                Config.Locations[k1].requiredJob[k] = 0
            end
        end
        if v.requiredGang and next(v.requiredGang) then
            for k in pairs(v.requiredGang) do
                Config.Locations[k1].requiredGang[k] = 0
            end
        end
    end
end)

RegisterNUICallback("close",function()
    SetNuiFocus(false, false)
end)

RegisterNUICallback("pay",function(data)
    if next(data.cartArr) == nil then
        QBCore.Functions.Notify("The Shopping Cart empty", "error")
        return
    end
    TriggerServerEvent("qb-shops:sv:pay", data)
end)
