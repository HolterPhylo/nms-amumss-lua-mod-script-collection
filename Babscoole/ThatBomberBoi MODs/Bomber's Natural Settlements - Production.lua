ProducedItemChanges =
{
    {
        {"GekProductionElements"},
        {    --Vanilla item              Replacement item
            {"TRA_CURIO2",              "ULTRAPROD2"},
            {"PLANT_POOP",              "TRA_CURIO2"},
            {"PLANT_WATER",             "FOOD_V_GEK"},
            {"PLANT_CAVE",              "NIPNIPBUDS"},
            {"PLANT_LUSH",              "TRA_EXOTICS3"}
        }
    },
    {
        {"KorvaxProductionElements"},
        {    --Vanilla item               Replacement item
            {"GAS2",                     "HYPERFUEL2"},
            {"PLANT_DUST",               "U_HYPERX"},
            {"SALVAGE_TECH1",            "U_HAZARDX"},
            {"SALVAGE_TECH2",            "U_ENERGYX"},
            {"EX_BLUE",                  "SALVAGE_TECH10"}
        }
    },
    {
        {"VykeenProductionElements"},
        {    --Vanilla item                Replacement item
            {"GAS3",                      "WAR_CURIO2"},
            {"PLANT_RADIO",               "U_SHOTGUNX"},
            {"ROBOT1",                    "SCRAP_WEAP"},
            {"SPACEGUNK3",                "U_BOLTX"},
            {"PLANT_TOXIC",               "ULTRAPROD1"}
        }
    },
}

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "BNS-Production 3.91.pak",
["MOD_AUTHOR"]      = "ThatBomberBoi",
["NMS_VERSION"]     = "3.91",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = {"GCSETTLEMENTGLOBALS.MBIN"},
                    ["EXML_CHANGE_TABLE"] =
                    {

                    }
                }
            }
        }
    }
}


local ChangesToProducedItems = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]

for i = 1, #ProducedItemChanges do
    local SettlementType = ProducedItemChanges[i][1][1]
    local Items = ProducedItemChanges[i][2]

    for j = 1, #Items do
        local OldItem = Items[j][1]
        local NewItem = Items[j][2]

            ChangesToProducedItems_temp =
            {
                ["PRECEDING_KEY_WORDS"] = {SettlementType},
                ["VALUE_MATCH"] = OldItem,
                ["VALUE_CHANGE_TABLE"] =
                {
                    {"Value", NewItem}
                }
            }
            ChangesToProducedItems[#ChangesToProducedItems+1] = ChangesToProducedItems_temp
    end
end