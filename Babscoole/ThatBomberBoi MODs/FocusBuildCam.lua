NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "FocusBuildCam.pak",
["MOD_AUTHOR"]    = "ThatBomberBoi",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "5.00",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCBUILDINGGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"BaseBuildingCameraMode", "FocusCam"},
                            }
                        },
                    }
                },
            }
        }
    }
}