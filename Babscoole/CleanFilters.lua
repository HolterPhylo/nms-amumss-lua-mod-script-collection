NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "CleanFilters.pak",
["MOD_AUTHOR"]    = "revaneldaris9",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "5.29",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\EFFECTS\SCREENFILTERS.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Frozen",      "GcScreenFilterData.xml"},
                                {"Toxic",       "GcScreenFilterData.xml"},
                                {"Radioactive", "GcScreenFilterData.xml"},
                                {"Scorched",    "GcScreenFilterData.xml"},
                                {"Barren",      "GcScreenFilterData.xml"},
                                {"Weird1",      "GcScreenFilterData.xml"},
                                {"Weird2",      "GcScreenFilterData.xml"},
                                {"Weird3",      "GcScreenFilterData.xml"},
                                {"Weird4",      "GcScreenFilterData.xml"},
                                {"Weird5",      "GcScreenFilterData.xml"},
                                {"Weird6",      "GcScreenFilterData.xml"},
                                {"Weird7",      "GcScreenFilterData.xml"},
                                {"Weird8",      "GcScreenFilterData.xml"},
                                {"Nexus",       "GcScreenFilterData.xml"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Filename", "TEXTURES/LUT/FILTERS/DEFAULT.DDS"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Frozen", "GcScreenFilterData.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SelectableInPhotoMode", "True"},
                                {"LocText",               "PHOTO_FILTER_3"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Vintage", "GcScreenFilterData.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Filename", "TEXTURES/LUT/FILTERS/IDENTITY.DDS"},
                                {"LocText",  "PHOTO_FILTER_4"},
                            }
                        },
                    }
                },
            }
        }
    }
}