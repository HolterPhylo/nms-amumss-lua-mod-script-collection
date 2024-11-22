NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]            = "_LessNPCsOnFreighterBase_Squadron.pak",
["MOD_AUTHOR"]              = "hemisFEAR",
["LUA_AUTHOR"]              = "Babscoole",
["NMS_VERSION"]             = "5.28",
["GLOBAL_INTEGER_TO_FLOAT"] = "FORCE",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCFREIGHTERBASEGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxTotalNPCCount",       "4"},
                                {"NPCStartSpawnDelayTime", "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MaxTotalCapacityOfNPCTypes"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                -- {"SquadronPilot",  "0"},
                                {"FrigateCaptain", "0"},
                                {"WorkerBio",      "0"},
                                {"WorkerTech",     "0"},
                                {"WorkerIndustry", "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"SquadronPilot", "GcFreighterNPCSpawnPriority.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"PriorityScale"},
                            ["REPLACE_TYPE"] = "ONCEINSIDE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IGNORE", "4"},
                                {"IGNORE", "2"},
                                {"IGNORE", "1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"WorkerBio",      "GcFreighterNPCSpawnPriority.xml"},
                                {"WorkerTech",     "GcFreighterNPCSpawnPriority.xml"},
                                {"WorkerIndustry", "GcFreighterNPCSpawnPriority.xml"},
                            },
                            ["PRECEDING_KEY_WORDS"] = {"PriorityScale"},
                            ["REPLACE_TYPE"] = "ONCEINSIDE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IGNORE", "0"},
                                {"IGNORE", "0"},
                                {"IGNORE", "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"FrigateCaptain", "GcFreighterNPCSpawnPriority.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"PriorityScale"},
                            ["REPLACE_TYPE"] = "ONCEINSIDE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IGNORE", "0"},
                                {"IGNORE", "0"},
                                {"IGNORE", "0"},
                                {"IGNORE", "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"RoomID", "FRE_ROOM_BIO"},
                                {"RoomID", "FRE_ROOM_PLANT0"},
                                {"RoomID", "FRE_ROOM_PLANT1"},
                                {"RoomID", "FRE_ROOM_NPCFAR"},
                                {"RoomID", "FRE_ROOM_COOK"},
                            },
                            ["PRECEDING_KEY_WORDS"] = {"SpawnCapacity"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SquadronPilot",  "1"},
                                {"FrigateCaptain", "0"},
                                {"WorkerBio",      "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"RoomID", "FRE_ROOM_BIO"},
                                {"RoomID", "FRE_ROOM_PLANT0"},
                                {"RoomID", "FRE_ROOM_PLANT1"},
                                {"RoomID", "FRE_ROOM_NPCFAR"},
                                {"RoomID", "FRE_ROOM_COOK"},
                            },
                            ["PRECEDING_KEY_WORDS"] = {"POISelectionWeight"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SquadronPilot",  "1"},
                                {"FrigateCaptain", "0"},
                                {"WorkerBio",      "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"RoomID", "FRE_ROOM_NPCFAR"},
                            ["PRECEDING_KEY_WORDS"] = {"POISelectionWeight"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SquadronPilot",  "2"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"RoomID", "FRE_ROOM_TECH"},
                                {"RoomID", "FRE_ROOM_NPCSCI"},
                                {"RoomID", "FRE_ROOM_NPCBUI"},
                                {"RoomID", "FRE_ROOM_DRESS"},
                                {"RoomID", "FRE_ROOM_SHOP"},
                            },
                            ["PRECEDING_KEY_WORDS"] = {"SpawnCapacity"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SquadronPilot",  "1"},
                                {"FrigateCaptain", "0"},
                                {"WorkerTech",     "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"RoomID", "FRE_ROOM_TECH"},
                                {"RoomID", "FRE_ROOM_NPCSCI"},
                                {"RoomID", "FRE_ROOM_NPCBUI"},
                                {"RoomID", "FRE_ROOM_DRESS"},
                                {"RoomID", "FRE_ROOM_SHOP"},
                            },
                            ["PRECEDING_KEY_WORDS"] = {"POISelectionWeight"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SquadronPilot",  "1"},
                                {"FrigateCaptain", "0"},
                                {"WorkerTech",     "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"RoomID", "FRE_ROOM_SCAN"},
                                {"RoomID", "FRE_ROOM_TELEPO"},
                            },
                            ["PRECEDING_KEY_WORDS"] = {"SpawnCapacity"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"WorkerTech", "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"RoomID", "FRE_ROOM_SCAN"},
                                {"RoomID", "FRE_ROOM_TELEPO"},
                            },
                            ["PRECEDING_KEY_WORDS"] = {"POISelectionWeight"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"WorkerTech", "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"RoomID", "FRE_ROOM_FLEET"},
                            ["PRECEDING_KEY_WORDS"] = {"SpawnCapacity"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SquadronPilot",  "0"},
                                {"FrigateCaptain", "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"RoomID", "FRE_ROOM_FLEET"},
                            ["PRECEDING_KEY_WORDS"] = {"POISelectionWeight"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SquadronPilot",  "0"},
                                {"FrigateCaptain", "0"},
                                {"WorkerTech",     "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"RoomID", "FRE_ROOM_IND"},
                                {"RoomID", "FRE_ROOM_REFINE"},
                                {"RoomID", "FRE_ROOM_EXTR"},
                                {"RoomID", "FRE_ROOM_NPCWEA"},
                                {"RoomID", "FRE_ROOM_NPCVEH"},
                                {"RoomID", "FRE_ROOM_VEHICL"},
                            },
                            ["PRECEDING_KEY_WORDS"] = {"SpawnCapacity"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SquadronPilot",  "1"},
                                {"FrigateCaptain", "0"},
                                {"WorkerIndustry", "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"RoomID", "FRE_ROOM_IND"},
                                {"RoomID", "FRE_ROOM_REFINE"},
                                {"RoomID", "FRE_ROOM_EXTR"},
                                {"RoomID", "FRE_ROOM_NPCWEA"},
                                {"RoomID", "FRE_ROOM_NPCVEH"},
                                {"RoomID", "FRE_ROOM_VEHICL"},
                            },
                            ["PRECEDING_KEY_WORDS"] = {"POISelectionWeight"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SquadronPilot",  "1"},
                                {"FrigateCaptain", "0"},
                                {"WorkerIndustry", "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"RoomID", "FRE_ROOM_STORE0"},
                                {"RoomID", "FRE_ROOM_STORE1"},
                                {"RoomID", "FRE_ROOM_STORE2"},
                                {"RoomID", "FRE_ROOM_STORE3"},
                                {"RoomID", "FRE_ROOM_STORE4"},
                                {"RoomID", "FRE_ROOM_STORE5"},
                                {"RoomID", "FRE_ROOM_STORE6"},
                            },
                            ["PRECEDING_KEY_WORDS"] = {"SpawnCapacity"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"WorkerIndustry", "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"RoomID", "FRE_ROOM_STORE0"},
                                {"RoomID", "FRE_ROOM_STORE1"},
                                {"RoomID", "FRE_ROOM_STORE2"},
                                {"RoomID", "FRE_ROOM_STORE3"},
                                {"RoomID", "FRE_ROOM_STORE4"},
                                {"RoomID", "FRE_ROOM_STORE5"},
                                {"RoomID", "FRE_ROOM_STORE6"},
                            },
                            ["PRECEDING_KEY_WORDS"] = {"POISelectionWeight"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SquadronPilot",  "0"},
                                {"FrigateCaptain", "0"},
                                {"WorkerIndustry", "0"},
                            }
                        },
                    }
                },
            }
        }
    }
}