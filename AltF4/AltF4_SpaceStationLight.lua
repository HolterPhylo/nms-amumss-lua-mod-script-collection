-- White    1    ,1    ,1
-- Blue     0    ,0    ,1
-- Cyan     0    ,1    ,1
-- Red      1    ,0    ,0
-- Green    0    ,1    ,0
-- Purple   0.580,0    ,0.827

NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"] = "AltF4_SpaceStationLight.pak",
    ["MOD_AUTHOR"] = "AltF4",
    ["LUA_AUTHOR"] = "AltF4",
    ["NMS_VERSION"] = "4.63",
    ["MOD_DESCRIPTION"] = "Custom space station light color.",
    ["MODIFICATIONS"] = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\COLOURS\BASECOLOURPALETTES.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"SpaceStationLights", "Colours"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] = {
                                {"R", "1"},
                                {"G", "1"},
                                {"B", "1"},
                            }
                        },
                    }
                },
            },
        },
    }
}