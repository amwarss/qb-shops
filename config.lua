Config = {}
Config.UseTruckerJob = false -- true = The shops stock is based on when truckers refill it | false = shop inventory never runs out
Config.UseTarget = GetConvar('UseTarget', 'false') == 'true' -- Use qb-target interactions (don't change this, go to your server.cfg and add `setr UseTarget true` to use this and just that from true to false or the other way around)
Config.ShopsInvJsonFile = './json/shops-inventory.json' -- json file location

Config.PoliceVehicles = {
    "police",
    "police2",
    "police3",
    "fbi",
    "fbi2"
}



-- optional requiredJob = {'police', 'ambulance'}
-- optional requiredGang = {'ballas', 'vagps'}
-- optional requiredLicense = {'driver', 'business', 'weapon'}

Config.Products = {
    ["normal"] = {
        ["name"] = "247 Supermarket",
        ["category"] = "Supermarket",
        ["job"] = "",
        ["categoryList"] = {
            ["Foods"] = "Foods for your hunger.",
            ["Drinks"] = "Drinks for your thirst.",
            ["Sweet"] = "Sweet for your mood.",
            ["Other"] = "Other items for your needs.",
        },
        ["itemList"] = {
            ["Foods"] = {
                [1] = {
                    name = "tosti",
                    price = 1,
                    amount = 50,
                    info = {},
                    type = "item",
                },
                [2] = {
                    name = "sandwich",
                    price = 2,
                    amount = 50,
                    info = {},
                    type = "item",
                },
            },
            ["Drinks"] = {
                [1] = {
                    name = "water_bottle",
                    price = 1,
                    amount = 50,
                    info = {},
                    type = "item",
                },
                [2] = {
                    name = "kurkakola",
                    price = 1.5,
                    amount = 50,
                    info = {},
                    type = "item",
                },
            },
            ["Sweet"] = {
                [1] = {
                    name = "twerks_candy",
                    price = 1,
                    amount = 50,
                    info = {},
                    type = "item",
                },
                [2] = {
                    name = "snikkel_candy",
                    price = 1,
                    amount = 50,
                    info = {},
                    type = "item",
                },
            },
            ["Other"] = {
                [1] = {
                    name = "lighter",
                    price = 1,
                    amount = 50,
                    info = {},
                    type = "item",
                },
                [2] = {
                    name = "ciggypack",
                    price = 5,
                    amount = 50,
                    info = {
                        uses = 20,
                    },
                    type = "item",
                },
                [3] = {
                    name = "notebook",
                    price = 3,
                    amount = 50,
                    info = {},
                    type = "item",
                },
            }
        }
    },


    ["police"] = {
        ["name"] = "Police Shop",
        ["category"] = "Police Supplies",
        ["job"] = "police",
        ["allowedCars"] = { "police", "police2" },
        ["rankRequired"] = "sergeant",
        ["categoryList"] = {
            ["Equipment"] = "Tools for law enforcement.",
        },
        ["itemList"] = {
            ["Equipment"] = {
                [1] = {
                    name = "handcuffs",
                    price = 10,
                    amount = 10,
                    info = {},
                    type = "item",
                },
                [2] = {
                    name = "radio",
                    price = 5,
                    amount = 10,
                    info = {},
                    type = "item",
                },
            }
        }
    },

    ["normal2"] = {
        ["name"] = "Drugs",
        ["category"] = "Drugs",
        ["job"] = "",
        ["categoryList"] = {
            ["General"] = "Sweet for your mood.",
        },
        ["itemList"] = {
            ["General"] = {
                [1] = {
                    name = "water_can",
                    price = 30,
                    amount = 100,
                    info = {},
                    type = "item",
                },
                [2] = {
                    name = "fertilizer",
                    price = 30,
                    amount = 100,
                    info = {},
                    type = "item",
                },
                [3] = {
                    name = "plant_pot",
                    price = 30,
                    amount = 100,
                    info = {},
                    type = "item",
                },
                [4] = {
                    name = "soil_bag",
                    price = 30,
                    amount = 100,
                    info = {},
                    type = "item",
                },
                [5] = {
                    name = "empty_weed_bag",
                    price = 30,
                    amount = 100,
                    info = {},
                    type = "item",
                },
                [6] = {
                    name = "lighter",
                    price = 30,
                    amount = 100,
                    info = {},
                    type = "item",
                },
                [7] = {
                    name = "rolling_paper",
                    price = 30,
                    amount = 100,
                    info = {},
                    type = "item",
                },
            },
        }
    },

    ["liquor"] = {
        ["name"] = "liquor Supermarket",
        ["category"] = "Supermarket",
        ["job"] = "",
        ["categoryList"] = {
            ["Beer"] = "Beer for your thirst.",
            ["Sweet"] = "Sweet for your mood.",
            ["Other"] = "Other items for your needs.",
        },
        ["itemList"] = {
            ["Beer"] = {
                [1] = {
                    name = "beer",
                    price = 4,
                    amount = 50,
                    info = {},
                    type = "item",
                },
                [2] = {
                    name = "whiskey",
                    price = 5,
                    amount = 50,
                    info = {},
                    type = "item",
                },
                [3] = {
                    name = "vodka",
                    price = 5,
                    amount = 50,
                    info = {},
                    type = "item",
                },
            },
            ["Sweet"] = {
                [1] = {
                    name = "twerks_candy",
                    price = 1,
                    amount = 50,
                    info = {},
                    type = "item",
                },
                [2] = {
                    name = "snikkel_candy",
                    price = 1,
                    amount = 50,
                    info = {},
                    type = "item",
                },
            },
            ["Other"] = {
                [1] = {
                    name = "lighter",
                    price = 1,
                    amount = 50,
                    info = {},
                    type = "item",
                },
                [2] = {
                    name = "ciggypack",
                    price = 5,
                    amount = 50,
                    info = {
                        uses = 20,
                    },
                    type = "item",
                },
            }
        }
    },

    ["hardware"] = {
        ["name"] = "Hardware Store",
        ["category"] = "Store",
        ["job"] = "",
        ["categoryList"] = {
            ["General"] = "Diverse items for various needs.",
        },
        ["itemList"] = {
            ["General"] = {
                [1] = {
                    name = "lockpick",
                    price = 10,
                    amount = 50,
                    info = {
                        uses = math.random(3, 5),
                        tier = "low"
                    },
                    type = "item",
                },
                [2] = {
                    name = "repairkit",
                    price = 30,
                    amount = 50,
                    info = {},
                    type = "item",
                },
                [3] = {
                    name = "binoculars",
                    price = 15,
                    amount = 50,
                    info = {},
                    type = "item",
                },
                [4] = {
                    name = "cleaningkit",
                    price = 5,
                    amount = 150,
                    info = {},
                    type = "item",
                },
                [5] = {
                    name = "diving_gear",
                    price = 50,
                    amount = 10,
                    info = {},
                    type = "item",
                },
                [6] = {
                    name = "parachute",
                    price = 50,
                    amount = 10,
                    info = {},
                    type = "item",
                },
                [7] = {
                    name = "tire",
                    price = 50,
                    amount = 10,
                    info = {},
                    type = "item",
                },
                [8] = {
                    name = "a4sheets",
                    price = 50,
                    amount = 10,
                    info = {},
                    type = "item",
                },
                [9] = {
                    name = "blowtorch",
                    price = 50,
                    amount = 10,
                    info = {},
                    type = "item",
                },
                [10] = {
                    name = "screwdriverset",
                    price = 50,
                    amount = 10,
                    info = {},
                    type = "item",
                },
                [11] = {
                    name = "diving_gear",
                    price = 50,
                    amount = 10,
                    info = {},
                    type = "item",
                },
                [12] = {
                    name = "syphoningkit",
                    price = 50,
                    amount = 10,
                    info = {},
                    type = "item",
                },
                [13] = {
                    name = "tablet",
                    price = 50,
                    amount = 10,
                    info = {},
                    type = "item",
                },

            },
        }
    },

    ["weapons"] = {
        ["name"] = "Weapon Store",
        ["category"] = "Store",
        ["job"] = "",
        ["categoryList"] = {
            ["Weapon"] = "Lethal tools for self-defense.",
        },
        ["itemList"] = {
            ["Weapon"] = {
                 [1] = {
                     name = "weapon_knife",
                     price = 4000,
                     amount = 20,
                     info = {},
                     type = "item",
                 },
                [2] = {
                    name = "armor",
                    price = 3000,
                    amount = 200,
                    info = {},
                    type = "item",
                },
            },
        }
    },
    ["sameitems"] = {
        ["name"] = "same items",
        ["category"] = "Store",
        ["job"] = "",
        ["categoryList"] = {
            ["General"] = "Sameting.",
        },
        ["itemList"] = {
            ["General"] = {
                [1] = {
                    name = "x_circuittester",
                    price = 9000,
                    amount = 250,
                    info = {},
                    type = "item",
                },
                [2] = {
                    name = "x_harddrive",
                    price = 8000,
                    amount = 250,
                    info = {},
                    type = "item",
                },
                [3] = {
                    name = "x_device",
                    price = 3500,
                    amount = 250,
                    info = {},
                    type = "item",
                },
            },
        }
    },

    ["electronic"] = {
        ["name"] = "Electronic Store",
        ["category"] = "Store",
        ["job"] = "",
        ["categoryList"] = {
            ["electronic"] = "Diverse items for various needs.",
        },
        ["itemList"] = {
            ["electronic"] = {
                [1] = {
                    name = 'phone',
                    price = 500,
                    amount = 100,
                    info = {},
                    type = 'item',
                },
                [2] = {
                    name = 'radio',
                    price = 100,
                    amount = 100,
                    info = {},
                    type = 'item',
                },
                [3] = {
                    name = 'camera',
                    price = 200,
                    amount = 100,
                    info = {},
                    type = 'item',
                },
            },
        }
    },
}


Config.Locations = {
    -- 24/7 Locations
    ["247supermarket"] = {
        ["label"] = "24/7 Supermarket",
        ['coords'] = vector4(27.26, -1342.85, 29.5, 185.68),
        ["ped"] = 'mp_m_shopkeep_01',
        ["scenario"] = "WORLD_HUMAN_STAND_MOBILE",
        ["radius"] = 1.5,        
        ["targetIcon"] = "fas fa-shopping-basket",
        ["targetLabel"] = "Open Shop",
        ["products"] = "normal",
        ["showblip"] = true,
        ["blipsprite"] = 52,
        ["blipscale"] = 0.6,
        ["blipcolor"] = 0,
        ["delivery"] = vector4(27.26, -1342.85, 29.5, 185.68)
    },

    ["247supermarket2"] = {
        ["label"] = "24/7 Supermarket",
        ['coords'] = vector4(-3044.22, 586.34, 7.91, 290.45),
        ["ped"] = 'mp_m_shopkeep_01',
        ["scenario"] = "WORLD_HUMAN_STAND_MOBILE",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-shopping-basket",
        ["targetLabel"] = "Open Shop",
        ["products"] = "normal",
        ["showblip"] = true,
        ["blipsprite"] = 52,
        ["blipscale"] = 0.6,
        ["blipcolor"] = 0,
        ["delivery"] = vector4(-3044.22, 586.34, 7.91, 290.45)
    },

    ["247supermarket3"] = {
        ["label"] = "24/7 Supermarket",
        ['coords'] = vector4(-3246.7, 1003.76, 12.83, 258.71),
        ["ped"] = 'mp_m_shopkeep_01',
        ["scenario"] = "WORLD_HUMAN_STAND_MOBILE",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-shopping-basket",
        ["targetLabel"] = "Open Shop",
        ["products"] = "normal",
        ["showblip"] = true,
        ["blipsprite"] = 52,
        ["blipscale"] = 0.6,
        ["blipcolor"] = 0,
        ["delivery"] = vector4(-3246.7, 1003.76, 12.83, 258.71)
    },

    ["247supermarket4"] = {
        ["label"] = "24/7 Supermarket",
        ['coords'] = vector4(1732.9, 6418.05, 35.04, 162.37),
        ["ped"] = 'mp_m_shopkeep_01',
        ["scenario"] = "WORLD_HUMAN_STAND_MOBILE",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-shopping-basket",
        ["targetLabel"] = "Open Shop",
        ["products"] = "normal",
        ["showblip"] = true,
        ["blipsprite"] = 52,
        ["blipscale"] = 0.6,
        ["blipcolor"] = 0,
        ["delivery"] = vector4(1732.9, 6418.05, 35.04, 162.37)
    },

    ["247supermarket5"] = {
        ["label"] = "24/7 Supermarket",
        ['coords'] = vector4(1960.95, 3745.72, 32.34, 223.97),
        ["ped"] = 'mp_m_shopkeep_01',
        ["scenario"] = "WORLD_HUMAN_STAND_MOBILE",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-shopping-basket",
        ["targetLabel"] = "Open Shop",
        ["products"] = "normal",
        ["showblip"] = true,
        ["blipsprite"] = 52,
        ["blipscale"] = 0.6,
        ["blipcolor"] = 0,
        ["delivery"] = vector4(1960.95, 3745.72, 32.34, 223.97)
    },

    ["247supermarket6"] = {
        ["label"] = "24/7 Supermarket",
        ['coords'] = vector4(546.27, 2666.23, 42.16, 10.02),
        ["ped"] = 'mp_m_shopkeep_01',
        ["scenario"] = "WORLD_HUMAN_STAND_MOBILE",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-shopping-basket",
        ["targetLabel"] = "Open Shop",
        ["products"] = "normal",
        ["showblip"] = true,
        ["blipsprite"] = 52,
        ["blipscale"] = 0.6,
        ["blipcolor"] = 0,
        ["delivery"] = vector4(546.27, 2666.23, 42.16, 10.02)
    },

    ["247supermarket7"] = {
        ["label"] = "24/7 Supermarket",
        ['coords'] = vector4(2675.47, 3284.76, 55.24, 245.44),
        ["ped"] = 'mp_m_shopkeep_01',
        ["scenario"] = "WORLD_HUMAN_STAND_MOBILE",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-shopping-basket",
        ["targetLabel"] = "Open Shop",
        ["products"] = "normal",
        ["showblip"] = true,
        ["blipsprite"] = 52,
        ["blipscale"] = 0.6,
        ["blipcolor"] = 0,
        ["delivery"] = vector4(2662.19, 3264.95, 55.24, 168.55)
    },

    ["247supermarket8"] = {
        ["label"] = "24/7 Supermarket",
        ['coords'] = vector4(2552.61, 384.48, 108.62, 261.55),
        ["ped"] = 'mp_m_shopkeep_01',
        ["scenario"] = "WORLD_HUMAN_STAND_MOBILE",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-shopping-basket",
        ["targetLabel"] = "Open Shop",
        ["products"] = "normal",
        ["showblip"] = true,
        ["blipsprite"] = 52,
        ["blipscale"] = 0.6,
        ["blipcolor"] = 0,
        ["delivery"] = vector4(2552.61, 384.48, 108.62, 261.55)
    },

    ["247supermarket9"] = {
        ["label"] = "24/7 Supermarket",
        ['coords'] = vector4(377.07, 330.01, 103.57, 167.26),
        ["ped"] = 'mp_m_shopkeep_01',
        ["scenario"] = "WORLD_HUMAN_STAND_MOBILE",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-shopping-basket",
        ["targetLabel"] = "Open Shop",
        ["products"] = "normal",
        ["showblip"] = true,
        ["blipsprite"] = 52,
        ["blipscale"] = 0.6,
        ["blipcolor"] = 0,
        ["delivery"] = vector4(377.07, 330.01, 103.57, 167.26)
    },

    -- LTD Gasoline Locations
    ["ltdgasoline"] = {
        ["label"] = "24/7 Supermarket",
        ["coords"] = vector4(-47.02, -1758.23, 29.42, 45.05),
        ["ped"] = 'mp_m_shopkeep_01',
        ["scenario"] = "WORLD_HUMAN_STAND_MOBILE",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-shopping-basket",
        ["targetLabel"] = "Open Shop",
        ["products"] = "normal",
        ["showblip"] = true,
        ["blipsprite"] = 52,
        ["blipscale"] = 0.6,
        ["blipcolor"] = 0,
        ["delivery"] = vector4(-40.51, -1747.45, 29.29, 326.39)
    },

    ["ltdgasoline2"] = {
        ["label"] = "24/7 Supermarket",
        ["coords"] = vector4(-706.06, -913.97, 19.22, 88.04),
        ["ped"] = 'mp_m_shopkeep_01',
        ["scenario"] = "WORLD_HUMAN_STAND_MOBILE",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-shopping-basket",
        ["targetLabel"] = "Open Shop",
        ["products"] = "normal",
        ["showblip"] = true,
        ["blipsprite"] = 52,
        ["blipscale"] = 0.6,
        ["blipcolor"] = 0,
        ["delivery"] = vector4(-702.89, -917.44, 19.21, 181.96)
    },

    -- ["ltdgasoline6"] = {
    --     ["label"] = "Drug Dealer",
    --     ["coords"] = vector4(-1171.87, -1575.62, 4.39, 138.7),
    --     ["ped"] = 'mp_m_weapexp_01',
    --     ["scenario"] = "WORLD_HUMAN_STAND_MOBILE",
    --     ["radius"] = 1.5,
    --     ["targetIcon"] = "fas fa-shopping-basket",
    --     ["targetLabel"] = "Open Shop",
    --     ["products"] = "normal2",
    --     ["showblip"] = true,
    --     ["blipsprite"] = 52,
    --     ["blipscale"] = 0.6,
    --     ["blipcolor"] = 0,
    --     ["delivery"] = vector4(-702.89, -917.44, 19.21, 181.96)
    -- },

    ["ltdgasoline3"] = {
        ["label"] = "24/7 Supermarket",
        ["coords"] = vector4(-1820.02, 794.03, 138.09, 135.45),
        ["ped"] = 'mp_m_shopkeep_01',
        ["scenario"] = "WORLD_HUMAN_STAND_MOBILE",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-shopping-basket",
        ["targetLabel"] = "Open Shop",
        ["products"] = "normal",
        ["showblip"] = true,
        ["blipsprite"] = 52,
        ["blipscale"] = 0.6,
        ["blipcolor"] = 0,
        ["delivery"] = vector4(-1829.29, 801.49, 138.41, 41.39)
    },

    ["ltdgasoline4"] = {
        ["label"] = "24/7 Supermarket",
        ["coords"] = vector4(1164.71, -322.94, 69.21, 101.72),
        ["ped"] = 'mp_m_shopkeep_01',
        ["scenario"] = "WORLD_HUMAN_STAND_MOBILE",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-shopping-basket",
        ["targetLabel"] = "Open Open Shop",
        ["products"] = "normal",
        ["showblip"] = true,
        ["blipsprite"] = 52,
        ["blipscale"] = 0.6,
        ["blipcolor"] = 0,
        ["delivery"] = vector4(1160.62, -312.06, 69.28, 3.77)
    },

    ["ltdgasoline5"] = {
        ["label"] = "24/7 Supermarket",
        ["coords"] = vector4(1697.87, 4922.96, 42.06, 324.71),
        ["ped"] = 'mp_m_shopkeep_01',
        ["scenario"] = "WORLD_HUMAN_STAND_MOBILE",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-shopping-basket",
        ["targetLabel"] = "Open Shop",
        ["products"] = "normal",
        ["showblip"] = true,
        ["blipsprite"] = 52,
        ["blipscale"] = 0.6,
        ["blipcolor"] = 0,
        ["delivery"] = vector4(1702.68, 4917.28, 42.22, 139.27)
    },

    -- Rob's Liquor Locations
    ["robsliquor"] = {
        ["label"] = "Rob's Liqour",
        ["coords"] = vector4(-1221.58, -908.15, 12.33, 35.49),
        ["ped"] = 'mp_m_shopkeep_01',
        ["scenario"] = "WORLD_HUMAN_STAND_MOBILE",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-shopping-basket",
        ["targetLabel"] = "Open Shop",
        ["products"] = "liquor",
        ["showblip"] = true,
        ["blipsprite"] = 52,
        ["blipscale"] = 0.6,
        ["blipcolor"] = 0,
        ["delivery"] = vector4(-1226.92, -901.82, 12.28, 213.26)
    },

    ["robsliquor2"] = {
        ["label"] = "Rob's Liqour",
        ["coords"] = vector4(-1486.59, -377.68, 40.16, 139.51),
        ["ped"] = 'mp_m_shopkeep_01',
        ["scenario"] = "WORLD_HUMAN_STAND_MOBILE",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-shopping-basket",
        ["targetLabel"] = "Open Shop",
        ["products"] = "liquor",
        ["showblip"] = true,
        ["blipsprite"] = 52,
        ["blipscale"] = 0.6,
        ["blipcolor"] = 0,
        ["delivery"] = vector4(-1468.29, -387.61, 38.79, 220.13)
    },

    ["robsliquor3"] = {
        ["label"] = "Rob's Liqour",
        ["coords"] = vector4(-2966.39, 391.42, 15.04, 87.48),
        ["ped"] = 'mp_m_shopkeep_01',
        ["scenario"] = "WORLD_HUMAN_STAND_MOBILE",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-shopping-basket",
        ["targetLabel"] = "Open Shop",
        ["products"] = "liquor",
        ["showblip"] = true,
        ["blipsprite"] = 52,
        ["blipscale"] = 0.6,
        ["blipcolor"] = 0,
        ["delivery"] = vector4(-2961.49, 376.25, 15.02, 111.41)
    },

    ["robsliquor4"] = {
        ["label"] = "Rob's Liqour",
        ["coords"] = vector4(1165.17, 2710.88, 38.16, 179.43),
        ["ped"] = 'mp_m_shopkeep_01',
        ["scenario"] = "WORLD_HUMAN_STAND_MOBILE",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-shopping-basket",
        ["targetLabel"] = "Open Shop",
        ["products"] = "liquor",
        ["showblip"] = true,
        ["blipsprite"] = 52,
        ["blipscale"] = 0.6,
        ["blipcolor"] = 0,
        ["delivery"] = vector4(1194.52, 2722.21, 38.62, 9.37)
    },

    ["robsliquor5"] = {
        ["label"] = "Rob's Liqour",
        ["coords"] = vector4(1134.2, -982.91, 46.42, 277.24),
        ["ped"] = 'mp_m_shopkeep_01',
        ["scenario"] = "WORLD_HUMAN_STAND_MOBILE",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-shopping-basket",
        ["targetLabel"] = "Open Shop",
        ["products"] = "liquor",
        ["showblip"] = true,
        ["blipsprite"] = 52,
        ["blipscale"] = 0.6,
        ["blipcolor"] = 0,
        ["delivery"] = vector4(1129.73, -989.27, 45.97, 280.98)
    },

    ["sameitems"] = {
        ["label"] = "D3's Weed",
        ["coords"] = vector4(1659.12, -82.36, 168.35, 267.44),
        ["ped"] = 'ig_benny',
        ["scenario"] = "WORLD_HUMAN_STAND_MOBILE",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-shopping-basket",
        ["targetLabel"] = "Open Drugs Store",
        ["products"] = "sameitems",
        ["showblip"] = false,
        ["blipsprite"] = 52,
        ["blipscale"] = 0.6,
        ["blipcolor"] = 0,
        ["delivery"] = vector4(1659.12, -82.36, 168.35, 267.44)
    },

    ["sameitems1"] = {
        ["label"] = "D3's Weed",
        ["coords"] = vector4(1681.3859, -84.2464, 168.3117, 72.51534),
        ["ped"] = 'ig_benny',
        ["scenario"] = "WORLD_HUMAN_STAND_MOBILE",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-shopping-basket",
        ["targetLabel"] = "Open Drugs Store",
        ["products"] = "normal2",
        ["showblip"] = false,
        ["blipsprite"] = 52,
        ["blipscale"] = 0.6,
        ["blipcolor"] = 0,
        ["delivery"] = vector4(1681.3859, -84.2464, 168.3117, 72.5153)
    },

    -- Hardware Store Locations
    ["hardware"] = {
        ["label"] = "Hardware Store",
        ["coords"] = vector4(2039.57, 3184.31, 45.26, 238.95),
        ["ped"] = 'mp_m_waremech_01',
        ["scenario"] = "WORLD_HUMAN_CLIPBOARD",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-wrench",
        ["targetLabel"] = "Open Hardware Store",
        ["products"] = "hardware",
        ["showblip"] = true,
        ["blipsprite"] = 402,
        ["blipscale"] = 0.6,
        ["blipcolor"] = 0,
        ["delivery"] = vector4(2039.57, 3184.31, 45.26, 238.95)
    },

    -- ["hardware2"] = {
    --     ["label"] = "Hardware Store",
    --     ["coords"] = vector4(45.68, -1749.04, 29.61, 53.13),
    --     ["ped"] = 'mp_m_waremech_01',
    --     ["scenario"] = "WORLD_HUMAN_CLIPBOARD",
    --     ["radius"] = 1.5,
    --     ["targetIcon"] = "fas fa-wrench",
    --     ["targetLabel"] = "Open Hardware Store",
    --     ["products"] = "hardware",
    --     ["showblip"] = true,
    --     ["blipsprite"] = 402,
    --     ["blipscale"] = 0.6,
    --     ["blipcolor"] = 0,
    --     ["delivery"] = vector4(89.15, -1745.29, 30.09, 315.25)
    -- },

    -- ["hardware3"] = {
    --     ["label"] = "Hardware Store",
    --     ["coords"] = vector4(-421.83, 6136.13, 31.88, 228.2),
    --     ["ped"] = 'mp_m_waremech_01',
    --     ["scenario"] = "WORLD_HUMAN_CLIPBOARD",
    --     ["radius"] = 1.5,
    --     ["targetIcon"] = "fas fa-wrench",
    --     ["targetLabel"] = "Hardware Store",
    --     ["products"] = "hardware",
    --     ["showblip"] = true,
    --     ["blipsprite"] = 402,
    --     ["blipscale"] = 0.6,
    --     ["blipcolor"] = 0,
    --     ["delivery"] = vector4(-438.25, 6146.9, 31.48, 136.99)
    -- },

    -- Ammunation Locations
    ["ammunation"] = {
        ["label"] = "Ammunation",
        ["type"] = "weapon",
        ["coords"] = vector4(14.27, -1105.21, 29.11, 160.08),
        ["ped"] = 's_m_y_ammucity_01',
        ["scenario"] = "WORLD_HUMAN_COP_IDLES",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-gun",
        ["targetLabel"] = "Open Ammunation",
        ["products"] = "weapons",
        ["showblip"] = true,
        ["blipsprite"] = 110,
        ["blipscale"] = 0.6,
        ["blipcolor"] = 0,
        ["delivery"] = vector4(14.27, -1105.21, 29.11, 160.08)
    },
    -- ["ammunation2"] = {
    --     ["label"] = "Ammunation",
    --     ["type"] = "weapon",
    --     ["coords"] = vector4(809.68, -2159.13, 29.62, 1.43),
    --     ["ped"] = 's_m_y_ammucity_01',
    --     ["scenario"] = "WORLD_HUMAN_COP_IDLES",
    --     ["radius"] = 1.5,
    --     ["targetIcon"] = "fas fa-gun",
    --     ["targetLabel"] = "Open Ammunation",
    --     ["products"] = "weapons",
    --     ["showblip"] = true,
    --     ["blipsprite"] = 110,
    --     ["blipscale"] = 0.6,
    --     ["blipcolor"] = 0,
    --     ["delivery"] = vector4(820.97, -2146.7, 28.71, 359.98)
    -- },
    -- ["ammunation3"] = {
    --     ["label"] = "Ammunation",
    --     ["type"] = "weapon",
    --     ["coords"] = vector4(1692.67, 3761.38, 34.71, 227.65),
    --     ["ped"] = 's_m_y_ammucity_01',
    --     ["scenario"] = "WORLD_HUMAN_COP_IDLES",
    --     ["radius"] = 1.5,
    --     ["targetIcon"] = "fas fa-gun",
    --     ["targetLabel"] = "Open Ammunation",
    --     ["products"] = "weapons",
    --     ["showblip"] = true,
    --     ["blipsprite"] = 110,
    --     ["blipscale"] = 0.6,
    --     ["blipcolor"] = 0,
    --     ["delivery"] = vector4(1687.17, 3755.47, 34.34, 163.69)
    -- },
    -- ["ammunation4"] = {
    --     ["label"] = "Ammunation",
    --     ["type"] = "weapon",
    --     ["coords"] = vector4(-331.23, 6085.37, 31.45, 228.02),
    --     ["ped"] = 's_m_y_ammucity_01',
    --     ["scenario"] = "WORLD_HUMAN_COP_IDLES",
    --     ["radius"] = 1.5,
    --     ["targetIcon"] = "fas fa-gun",
    --     ["targetLabel"] = "Open Ammunation",
    --     ["products"] = "weapons",
    --     ["showblip"] = true,
    --     ["blipsprite"] = 110,
    --     ["blipscale"] = 0.6,
    --     ["blipcolor"] = 0,
    --     ["delivery"] = vector4(-341.72, 6098.49, 31.32, 11.05)
    -- },
    -- ["ammunation5"] = {
    --     ["label"] = "Ammunation",
    --     ["type"] = "weapon",
    --     ["coords"] = vector4(253.63, -51.02, 69.94, 72.91),
    --     ["ped"] = 's_m_y_ammucity_01',
    --     ["scenario"] = "WORLD_HUMAN_COP_IDLES",
    --     ["radius"] = 1.5,
    --     ["targetIcon"] = "fas fa-gun",
    --     ["targetLabel"] = "Open Ammunation",
    --     ["products"] = "weapons",
    --     ["showblip"] = true,
    --     ["blipsprite"] = 110,
    --     ["blipscale"] = 0.6,
    --     ["blipcolor"] = 0,
    --     ["delivery"] = vector4(249.0, -50.64, 69.94, 60.71)
    -- },
    -- ["ammunation6"] = {
    --     ["label"] = "Ammunation",
    --     ["type"] = "weapon",
    --     ["coords"] = vector4(23.0, -1105.67, 29.8, 162.91),
    --     ["ped"] = 's_m_y_ammucity_01',
    --     ["scenario"] = "WORLD_HUMAN_COP_IDLES",
    --     ["radius"] = 1.5,
    --     ["targetIcon"] = "fas fa-gun",
    --     ["targetLabel"] = "Open Ammunation",
    --     ["products"] = "weapons",
    --     ["showblip"] = true,
    --     ["blipsprite"] = 110,
    --     ["blipscale"] = 0.6,
    --     ["blipcolor"] = 0,
    --     ["delivery"] = vector4(-5.82, -1107.48, 29.0, 164.32)
    -- },
    -- ["ammunation7"] = {
    --     ["label"] = "Ammunation",
    --     ["type"] = "weapon",
    --     ["coords"] = vector4(2567.48, 292.59, 108.73, 349.68),
    --     ["ped"] = 's_m_y_ammucity_01',
    --     ["scenario"] = "WORLD_HUMAN_COP_IDLES",
    --     ["radius"] = 1.5,
    --     ["targetIcon"] = "fas fa-gun",
    --     ["targetLabel"] = "Open Ammunation",
    --     ["products"] = "weapons",
    --     ["showblip"] = true,
    --     ["blipsprite"] = 110,
    --     ["blipscale"] = 0.6,
    --     ["blipcolor"] = 0,
    --     ["delivery"] = vector4(2578.77, 285.53, 108.61, 277.2)
    -- },
    -- ["ammunation8"] = {
    --     ["label"] = "Ammunation",
    --     ["type"] = "weapon",
    --     ["coords"] = vector4(-1118.59, 2700.05, 18.55, 221.89),
    --     ["ped"] = 's_m_y_ammucity_01',
    --     ["scenario"] = "WORLD_HUMAN_COP_IDLES",
    --     ["radius"] = 1.5,
    --     ["targetIcon"] = "fas fa-gun",
    --     ["targetLabel"] = "Open Ammunation",
    --     ["products"] = "weapons",
    --     ["showblip"] = true,
    --     ["blipsprite"] = 110,
    --     ["blipscale"] = 0.6,
    --     ["blipcolor"] = 0,
    --     ["delivery"] = vector4(-1127.67, 2708.18, 18.8, 41.76)
    -- },
    -- ["ammunation9"] = {
    --     ["label"] = "Ammunation",
    --     ["type"] = "weapon",
    --     ["coords"] = vector4(841.92, -1035.32, 28.19, 1.56),
    --     ["ped"] = 's_m_y_ammucity_01',
    --     ["scenario"] = "WORLD_HUMAN_COP_IDLES",
    --     ["radius"] = 1.5,
    --     ["targetIcon"] = "fas fa-gun",
    --     ["targetLabel"] = "Open Ammunation",
    --     ["products"] = "weapons",
    --     ["showblip"] = true,
    --     ["blipsprite"] = 110,
    --     ["blipscale"] = 0.6,
    --     ["blipcolor"] = 0,
    --     ["delivery"] = vector4(847.83, -1020.36, 27.88, 88.29)
    -- },
    -- ["ammunation10"] = {
    --     ["label"] = "Ammunation",
    --     ["type"] = "weapon",
    --     ["coords"] = vector4(-1304.19, -395.12, 36.7, 75.03),
    --     ["ped"] = 's_m_y_ammucity_01',
    --     ["scenario"] = "WORLD_HUMAN_COP_IDLES",
    --     ["radius"] = 1.5,
    --     ["targetIcon"] = "fas fa-gun",
    --     ["targetLabel"] = "Open Ammunation",
    --     ["products"] = "weapons",
    --     ["showblip"] = true,
    --     ["blipsprite"] = 110,
    --     ["blipscale"] = 0.6,
    --     ["blipcolor"] = 0,
    --     ["delivery"] = vector4(-1302.44, -385.23, 36.62, 303.79)
    -- },
    -- ["ammunation11"] = {
    --     ["label"] = "Ammunation",
    --     ["type"] = "weapon",
    --     ["coords"] = vector4(-3173.31, 1088.85, 20.84, 244.18),
    --     ["ped"] = 's_m_y_ammucity_01',
    --     ["scenario"] = "WORLD_HUMAN_COP_IDLES",
    --     ["radius"] = 1.5,
    --     ["targetIcon"] = "fas fa-gun",
    --     ["targetLabel"] = "Open Ammunation",
    --     ["products"] = "weapons",
    --     ["showblip"] = true,
    --     ["blipsprite"] = 110,
    --     ["blipscale"] = 0.6,
    --     ["blipcolor"] = 0,
    --     ["delivery"] = vector4(-3183.6, 1084.35, 20.84, 68.13)
    -- },

    -- Casino Locations
    -- ["casino"] = {
    --     ["label"] = "Diamond Casino",
    --     ["coords"] = vector4(978.46, 39.07, 74.88, 64.0),
    --     ["ped"] = 'csb_tomcasino',
    --     ["scenario"] = "WORLD_HUMAN_STAND_MOBILE",
    --     ["radius"] = 1.5,
    --     ["targetIcon"] = "fas fa-coins",
    --     ["targetLabel"] = "Buy Chips",
    --     ["products"] = "casino",
    --     ["showblip"] = true,
    --     ["blipsprite"] = 617,
    --     ["blipscale"] = 0.6,
    --     ["blipcolor"] = 0,
    --     ["delivery"] = vector4(972.6, 9.22, 81.04, 233.38)
    -- },

    -- ["casinobar"] = {
    --     ["label"] = "Casino Bar",
    --     ["coords"] = vector4(968.13, 29.85, 74.88, 208.86),
    --     ["ped"] = 'a_m_y_smartcaspat_01',
    --     ["scenario"] = "WORLD_HUMAN_VALET",
    --     ["radius"] = 1.5,
    --     ["targetIcon"] = "fas fa-wine-bottle",
    --     ["targetLabel"] = "Open Casino Bar",
    --     ["products"] = "liquor",
    --     ["showblip"] = false,
    --     ["blipsprite"] = 52,
    --     ["blipscale"] = 0.6,
    --     ["blipcolor"] = 0,
    --     ["delivery"] = vector4(937.16, 1.0, 78.76, 152.4)
    -- },

    -- ["electronic"] = {
    --     ["label"] = "Click Lovers",
    --     ["coords"] = vector4(212.60856, -1507.437, 29.294555, 220.72323),
    --     ["ped"] = 'a_m_y_stwhi_02',
    --     ["scenario"] = "WORLD_HUMAN_VALET",
    --     ["radius"] = 1.5,
    --     ["targetIcon"] = "fas fa-mobile",
    --     ["targetLabel"] = "Open Electronic shop",
    --     ["products"] = "electronic",
    --     ["showblip"] = true,
    --     ["blipsprite"] = 89,
    --     ["blipscale"] = 0.6,
    --     ["blipcolor"] = 1,
    --     ["delivery"] = vector4(937.16, 1.0, 78.76, 152.4)
    -- },

    ["electronic1"] = {
        ["label"] = "Digital",
        ["coords"] = vector4(384.09, -826.38, 29.31, 278.4),
        ["ped"] = 'a_m_y_soucent_01',
        ["scenario"] = "WORLD_HUMAN_VALET",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-mobile",
        ["targetLabel"] = "Open Electronic shop",
        ["products"] = "electronic",
        ["showblip"] = true,
        ["blipsprite"] = 521,
        ["blipscale"] = 0.6,
        ["blipcolor"] = 4,
        ["delivery"] = vector4(384.09, -826.38, 29.31, 278.4)
    },

    -- Weedshop Locations
    -- ["weedshop"] = {
    --     ["label"] = "Smoke On The Water",
    --     ["coords"] = vector4(-1168.26, -1573.2, 4.66, 105.24),
    --     ["ped"] = 'a_m_y_hippy_01',
    --     ["scenario"] = "WORLD_HUMAN_AA_SMOKE",
    --     ["radius"] = 1.5,
    --     ["targetIcon"] = "fas fa-cannabis",
    --     ["targetLabel"] = "Open Weed Shop",
    --     ["products"] = "weedshop",
    --     ["showblip"] = true,
    --     ["blipsprite"] = 140,
    --     ["blipscale"] = 0.6,
    --     ["blipcolor"] = 0,
    --     ["delivery"] = vector4(-1162.13, -1568.57, 4.39, 328.52)
    -- },

    -- Sea Word Locations
    -- ["seaword"] = {
    --     ["label"] = "Sea Word",
    --     ["coords"] = vector4(-1687.03, -1072.18, 13.15, 52.93),
    --     ["ped"] = 'a_m_y_beach_01',
    --     ["scenario"] = "WORLD_HUMAN_STAND_IMPATIENT",
    --     ["radius"] = 1.5,
    --     ["targetIcon"] = "fas fa-fish",
    --     ["targetLabel"] = "Sea Word",
    --     ["products"] = "gearshop",
    --     ["showblip"] = true,
    --     ["blipsprite"] = 52,
    --     ["blipscale"] = 0.6,
    --     ["blipcolor"] = 0,
    --     ["delivery"] = vector4(-1674.18, -1073.7, 13.15, 333.56)
    -- },

    -- Leisure Shop Locations
    -- ["leisureshop"] = {
    --     ["label"] = "Leisure Shop",
    --     ["coords"] = vector4(-1505.91, 1511.95, 115.29, 257.13),
    --     ["ped"] = 'a_m_y_beach_01',
    --     ["scenario"] = "WORLD_HUMAN_STAND_MOBILE_CLUBHOUSE",
    --     ["radius"] = 1.5,
    --     ["targetIcon"] = "fas fa-leaf",
    --     ["targetLabel"] = "Open Leisure Shop",
    --     ["products"] = "leisureshop",
    --     ["showblip"] = true,
    --     ["blipsprite"] = 52,
    --     ["blipscale"] = 0.6,
    --     ["blipcolor"] = 0,
    --     ["delivery"] = vector4(-1507.64, 1505.52, 115.29, 262.2)
    -- },
}
