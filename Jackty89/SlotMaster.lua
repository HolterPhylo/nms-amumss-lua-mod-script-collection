ModName = "SlotMaster"
Author = "Jackty89"

InventoryTablePath = "METADATA/REALITY/TABLES/INVENTORYTABLE.MBIN"
DefaultRealityPath = "METADATA/REALITY/DEFAULTREALITY.MBIN"
DefaultSaveDatePath = "METADATA/GAMESTATE/DEFAULTSAVEDATA.MBIN"

MaxInventoryCap = 120
MaxTechCap = 60

InventoryWidth = 10
InventoryHeight = 12

TechWidth = 10
TechHeight = 6

ImproveShip = true
ImproveWeapon = true
ImproveAlien = true
ImproveVehicle = true
ImproveInventory = true
ImproveFreighter = true

MaxSlot = false

InputUserImproveShip = {ImproveShip,
[[
    Would you like improve ship slots?
    Default = Y | Current = >> ]] .. (ImproveShip and "Y" or "N") .. [[ <<
]]}
InputUserImproveWeapon = {ImproveWeapon,
[[
    Would you like improve weapon slots?
    Default = Y | Current = >> ]] .. (ImproveWeapon and "Y" or "N") .. [[ <<
]]}
InputUserImproveAlien = {ImproveAlien,
[[
    Would you like improve living ship slots?
    Default = Y | Current = >> ]] .. (ImproveAlien and "Y" or "N") .. [[ <<
]]}
InputUserImproveVehicle = {ImproveVehicle,
[[
    Would you like improve exocraft slots?
    Default = Y | Current = >> ]] .. (ImproveVehicle and "Y" or "N") .. [[ <<
]]}
InputUserImproveInventory = {ImproveInventory,
[[
    Would you like improve ship slots?
    Default = Y | Current = >> ]] .. (ImproveInventory and "Y" or "N") .. [[ <<
]]}
InputUserImproveFreighter = {ImproveFreighter,
[[
    Would you like improve freighter slots?
    Default = Y | Current = >> ]] .. (ImproveFreighter and "Y" or "N") .. [[ <<
]]}

InputUserMaxSlot = {MaxSlot,
[[
    Would you like max slot on all inventories?
    Default = N | Current = >> ]] .. (MaxSlot and "Y" or "N") .. [[ <<
]]}

ImproveShip = GUIF(InputUserImproveShip, 10)
ImproveWeapon = GUIF(InputUserImproveWeapon, 10)
ImproveAlien = GUIF(InputUserImproveAlien, 10)
ImproveVehicle = GUIF(InputUserImproveVehicle, 10)
ImproveInventory = GUIF(InputUserImproveInventory, 10)
ImproveFreighter = GUIF(InputUserImproveFreighter, 10)

MaxSlot = GUIF(InputUserMaxSlot, 10)

AlienSizes = {
    "AlienSmall",
    "AlienMedium",
    "AlienLarge"
}

VehicleSizes = {
    "VehicleSmall",
    "VehicleMedium",
    "VehicleLarge"
}

FreighterSizes = {
    "FreighterSmall",
    "FreighterMedium",
    "FreighterLarge",
}

WeaponSizes = {
    "WeaponSmall",
    "WeaponMedium",
    "WeaponLarge"
}

ShipSizes = {
    "SciSmall",
    "SciMedium",
    "SciLarge",

    "FgtSmall",
    "FgtMedium",
    "FgtLarge",

    "ShuSmall",
    "ShtMedium",
    "ShtLarge",

    "DrpSmall",
    "DrpMedium",
    "DrpLarge",

    "SailSmall",
    "SailMedium",
    "SailLarge",

    "RobotSmall",
    "RobotMedium",
    "RobotLarge",

    "RoySmall",
    "RoyMedium",
    "FreighterLarge"
}

ShipTypes = {
    "Dropship",
    "Fighter",
    "Scientific",
    "Shuttle",
    "Royal",
    "Sail",
    "Robot"
}

NMS_MOD_DEFINITION_CONTAINER =
{
    MOD_FILENAME = ModName,
    MOD_DESCRIPTION = ModName,
    MOD_AUTHOR = Author,
    MODIFICATIONS =
    {
        {
            MBIN_CHANGE_TABLE =
            {
                {
                    MBIN_FILE_SOURCE = InventoryTablePath
                },
                {
                    MBIN_FILE_SOURCE = DefaultRealityPath
                },
                {
                    MBIN_FILE_SOURCE = DefaultSaveDatePath
                }
            }
        }
    }
}

local ChangesToInventoryTable = NMS_MOD_DEFINITION_CONTAINER.MODIFICATIONS[1].MBIN_CHANGE_TABLE[1]

function EditInventory(type, maxSlot)
    print(type)
    if ChangesToInventoryTable.MXML_CHANGE_TABLE == nil then
        print("Initialize MXML_CHANGE_TABLE")
        ChangesToInventoryTable.MXML_CHANGE_TABLE = {}
    end

    if maxSlot or string.find(type, "Vehicle") then
        print("vehicle "..type)
        ChangesToInventoryTable.MXML_CHANGE_TABLE[#ChangesToInventoryTable.MXML_CHANGE_TABLE + 1] =
        {
            SPECIAL_KEY_WORDS = {type, "GcInventoryLayoutGenerationDataEntry"},
            VALUE_CHANGE_TABLE =
            {
                {"MinSlots", MaxInventoryCap},
                {"MaxSlots", MaxInventoryCap},
                {"MinTechSlots", MaxTechCap},
                {"MaxTechSlots", MaxTechCap}
            }
        }
    end

    if type ~= "Suite" then
        ChangesToInventoryTable.MXML_CHANGE_TABLE[#ChangesToInventoryTable.MXML_CHANGE_TABLE + 1] =
        {
            SPECIAL_KEY_WORDS = {type, "GcInventoryLayoutGenerationDataEntry", "Bounds", "GcInventoryLayoutGenerationBounds"},
            VALUE_CHANGE_TABLE =
            {
                {"MaxWidthSmall",     InventoryWidth},
                {"MaxHeightSmall",    InventoryHeight},
                {"MaxWidthStandard",  InventoryWidth},
                {"MaxHeightStandard", InventoryHeight},
                {"MaxWidthLarge",     InventoryWidth},
                {"MaxHeightLarge",    InventoryHeight}
            }
        }

        ChangesToInventoryTable.MXML_CHANGE_TABLE[#ChangesToInventoryTable.MXML_CHANGE_TABLE + 1] =
        {
            SPECIAL_KEY_WORDS = {type, "GcInventoryLayoutGenerationDataEntry", "TechBounds", "GcInventoryLayoutGenerationBounds"},
            VALUE_CHANGE_TABLE =
            {
                {"MaxWidthSmall",     TechWidth},
                {"MaxHeightSmall",    TechHeight},
                {"MaxWidthStandard",  TechWidth},
                {"MaxHeightStandard", TechHeight},
                {"MaxWidthLarge",     TechWidth},
                {"MaxHeightLarge",    TechHeight}
            }
        }
    end
end

function ImproveClassSlotLimit(type)
    ChangesToInventoryTable.MXML_CHANGE_TABLE[#ChangesToInventoryTable.MXML_CHANGE_TABLE + 1] =
    {
        PRECEDING_KEY_WORDS = {"ShipInventoryMaxUpgradeSize", type, "MaxInventoryCapacity"},
        VALUE_CHANGE_TABLE =
        {
            {"C", MaxInventoryCap},
            {"B", MaxInventoryCap},
            {"A", MaxInventoryCap},
            {"S", MaxInventoryCap}
        }
    }

    ChangesToInventoryTable.MXML_CHANGE_TABLE[#ChangesToInventoryTable.MXML_CHANGE_TABLE + 1] =
    {
        PRECEDING_KEY_WORDS = {"ShipInventoryMaxUpgradeSize", type, "MaxTechInventoryCapacity"},
        VALUE_CHANGE_TABLE =
        {
            {"C", MaxTechCap},
            {"B", MaxTechCap},
            {"A", MaxTechCap},
            {"S", MaxTechCap}
        }
    }
end

function ImproveSuitInventory()
    EditInventory("Suit", MaxSlot)
end

function ImproveShipInventory()
    for _key, shipSize in ipairs(ShipSizes) do
        EditInventory(shipSize, MaxSlot)
    end
    for _key, shipType in ipairs(ShipTypes) do
        ImproveClassSlotLimit(shipType)
    end
end

function ImproveVehicleInventory()
    for _key, vehicleSize in ipairs(VehicleSizes) do
        EditInventory(vehicleSize, true)
    end
end

function ImproveWeaponInventory()
    for _key, weaponSize in ipairs(WeaponSizes) do
        EditInventory(weaponSize, MaxSlot)
    end

    ChangesToInventoryTable.MXML_CHANGE_TABLE[#ChangesToInventoryTable.MXML_CHANGE_TABLE + 1] =
    {
        SPECIAL_KEY_WORDS = {"WeaponInventoryMaxUpgradeSize", "GcWeaponInventoryMaxUpgradeCapacity"},
        VALUE_CHANGE_TABLE =
        {
            {"C", MaxTechCap},
            {"B", MaxTechCap},
            {"A", MaxTechCap},
            {"S", MaxTechCap}
        }
    }
end

function ImproveFreighterInventory()
    for _key, freighterSize in ipairs(FreighterSizes) do
        EditInventory(freighterSize, MaxSlot)
    end
    ImproveClassSlotLimit("Freighter")
end

function ImproveAlienInventory()
    for _key, alienSize in ipairs(AlienSizes) do
        EditInventory(alienSize, MaxSlot)
    end
    ImproveClassSlotLimit("Alien")
end

local ChangesToDefaultReality = NMS_MOD_DEFINITION_CONTAINER.MODIFICATIONS[1].MBIN_CHANGE_TABLE[2]
function NewSaveStartingSlots()
    ChangesToDefaultReality.MXML_CHANGE_TABLE = {}
    ChangesToDefaultReality.MXML_CHANGE_TABLE[#ChangesToDefaultReality.MXML_CHANGE_TABLE  + 1] =
    {
        SPECIAL_KEY_WORDS = {"SuitStartingSlotLayout", "GcInventoryLayout"},
        VALUE_CHANGE_TABLE =
        {
            {"Slots", MaxInventoryCap}
        }
    }
    ChangesToDefaultReality.MXML_CHANGE_TABLE [#ChangesToDefaultReality.MXML_CHANGE_TABLE  + 1] =
    {
        SPECIAL_KEY_WORDS = {"ShipStartingLayout", "GcInventoryLayout"},
        VALUE_CHANGE_TABLE =
        {
            {"Slots", MaxInventoryCap}
        }
    }
    ChangesToDefaultReality.MXML_CHANGE_TABLE [#ChangesToDefaultReality.MXML_CHANGE_TABLE  + 1] =
    {
        SPECIAL_KEY_WORDS = {"SuitTechOnlyStartingSlotLayout", "GcInventoryLayout"},
        VALUE_CHANGE_TABLE =
        {
            {"Slots", MaxTechCap}
        }
    }
    ChangesToDefaultReality.MXML_CHANGE_TABLE [#ChangesToDefaultReality.MXML_CHANGE_TABLE  + 1] =
    {
        SPECIAL_KEY_WORDS = {"ShipTechOnlyStartingLayout", "GcInventoryLayout"},
        VALUE_CHANGE_TABLE =
        {
            {"Slots", MaxTechCap}
        }
    }
end

if ImproveShip then
    ImproveShipInventory()
end
if ImproveWeapon then
    ImproveWeaponInventory()
end
if ImproveAlien then
    ImproveAlienInventory()
end
if ImproveVehicle then
    ImproveVehicleInventory()
end
if ImproveInventory then
    ImproveSuitInventory()
    if MaxSlot then
        NewSaveStartingSlots()
    end
end
if ImproveFreighter then
    ImproveFreighterInventory()
end