NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]            = "_MOD_DUD_SpaceshipFlight_v472-A.pak",
["MOD_AUTHOR"]              = "jasondude7116",
["LUA_AUTHOR"]              = "Babscoole",
["NMS_VERSION"]             = "4.72",
["GLOBAL_INTEGER_TO_FLOAT"] = "FORCE",
["MODIFICATIONS"]           =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCSPACESHIPGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ShieldLeechMul",                           "0.03"},
                                {"ShieldRechargeMinHitTime",                 "3"},
                                {"ShieldRechargeRate",                       "3"},
                                {"NoBoostFreighterDistance",                 "2000"},
                                {"NoBoostFreighterAngle",                    "30"},
                                {"NoBoostShipDistance",                      "3000"},
                                {"NoBoostShipNearMinTime",                   "10"},
                                {"NoBoostShipLastHitTime",                   "20"},
                                {"NoBoostCombatEventMinBattleTime",          "45"},
                                {"NoBoostCombatEventMinFreighterBattleTime", "60"},
                                {"NoBoostCombatEventTime",                   "30"},
                                {"ThrustDecaySpring",                        "90000"},
                                {"ThrustDecaySpringCombat",                  "90000"},
                                {"DriftTurnStrengthMultiplier",              "0.05"},
                                {"AsteroidHitAngle",                         "180"},
                                {"AsteroidHitAngleBoosting",                 "180"},
                                {"MiniWarpLinesNum",                         "0"},
                                {"CombatBoostMultiplier",                    "2"},
                                {"CombatBoostTurnDamp",                      "0.3"},
                                {"MiniWarpHUDArrowAttractAngle",             "3"},
                                {"MiniWarpHUDArrowAttractAngleStation",      "3"},
                                {"MiniWarpHUDArrowAttractAngleDense",        "3"},
                                {"PowerSettingEngineMul",                    "1.15"},
                                {"PowerSettingEngineDamper",                 "0.75"},
                                {"PowerSettingWeaponMul",                    "1.1"},
                                {"PowerSettingWeaponDamper",                 "0.75"},
                                {"PowerSettingShieldMul",                    "1.15"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Control", "SpaceEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForce",       "30"},
                                {"Falloff",           "0.6"},
                                {"BoostThrustForce",  "80"},
                                {"BoostFalloff",      "0.4"},
                                {"BoostingTurnDamp",  "0.2"},
                                {"DirectionBrakeMin", "0.55"},
                                {"DirectionBrake",    "0.85"},
                                {"ReverseBrake",      "0.25"},
                                {"OverspeedBrake",    "0.4"},
                                {"TurnBrakeMin",      "0.5"},
                                {"TurnBrakeMax",      "1"},
                                {"RollForce",         "1.35"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Control", "PlanetEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForce",       "15"},
                                {"MinSpeed",          "0.01"},
                                {"Falloff",           "0.4"},
                                {"BoostThrustForce",  "52"},
                                {"BoostFalloff",      "0.3"},
                                {"BoostingTurnDamp",  "0.2"},
                                {"DirectionBrakeMin", "0.6"},
                                {"DirectionBrake",    "0.9"},
                                {"ReverseBrake",      "0.5"},
                                {"TurnBrakeMin",      "1"},
                                {"TurnBrakeMax",      "1.5"},
                                {"RollForce",         "1.15"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Control", "CombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForce",       "30"},
                                {"MaxSpeed",          "180"},
                                {"MinSpeed",          "10"},
                                {"Falloff",           "0.6"},
                                {"BoostThrustForce",  "80"},
                                {"BoostFalloff",      "0.4"},
                                {"BoostingTurnDamp",  "0.2"},
                                {"DirectionBrakeMin", "0.55"},
                                {"DirectionBrake",    "0.85"},
                                {"ReverseBrake",      "0.25"},
                                {"OverspeedBrake",    "0.4"},
                                {"TurnBrakeMin",      "0.5"},
                                {"TurnBrakeMax",      "2"},
                                {"TurnStrength",      "1"},
                                {"RollForce",         "1.35"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Control", "AtmosCombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForce",       "15"},
                                {"MaxSpeed",          "105"},
                                {"Falloff",           "0.4"},
                                {"BoostThrustForce",  "52"},
                                {"BoostMaxSpeed",     "125"},
                                {"BoostFalloff",      "0.3"},
                                {"BoostingTurnDamp",  "0.2"},
                                {"DirectionBrakeMin", "0.6"},
                                {"DirectionBrake",    "0.9"},
                                {"TurnBrakeMin",      "0.5"},
                                {"TurnBrakeMax",      "2"},
                                {"TurnStrength",      "1"},
                                {"RollForce",         "1.15"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlLight", "SpaceEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForce",       "40"},
                                {"Falloff",           "0.6"},
                                {"BoostThrustForce",  "160"},
                                {"BoostFalloff",      "0.5"},
                                {"BoostingTurnDamp",  "0.3"},
                                {"DirectionBrakeMin", "0.8"},
                                {"DirectionBrake",    "1"},
                                {"ReverseBrake",      "0.4"},
                                {"OverspeedBrake",    "0.5"},
                                {"TurnBrakeMin",      "0.5"},
                                {"TurnBrakeMax",      "1.5"},
                                {"TurnStrength",      "1.5"},
                                {"RollForce",         "1.6"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlLight", "PlanetEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForce",       "20"},
                                {"MinSpeed",          "0.01"},
                                {"Falloff",           "0.4"},
                                {"BoostThrustForce",  "80"},
                                {"BoostFalloff",      "0.3"},
                                {"DirectionBrakeMin", "0.9"},
                                {"DirectionBrake",    "1.1"},
                                {"ReverseBrake",      "0.5"},
                                {"TurnBrakeMin",      "1.5"},
                                {"TurnBrakeMax",      "2"},
                                {"TurnStrength",      "1.5"},
                                {"RollAmount",        "2.3"},
                                {"RollForce",         "1.4"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlLight", "CombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForce",       "40"},
                                {"MaxSpeed",          "180"},
                                {"MinSpeed",          "10"},
                                {"Falloff",           "0.6"},
                                {"BoostThrustForce",  "160"},
                                {"BoostFalloff",      "0.5"},
                                {"BoostingTurnDamp",  "0.3"},
                                {"DirectionBrakeMin", "0.8"},
                                {"DirectionBrake",    "1"},
                                {"ReverseBrake",      "0.4"},
                                {"OverspeedBrake",    "0.5"},
                                {"TurnBrakeMin",      "0.5"},
                                {"TurnBrakeMax",      "2"},
                                {"RollForce",         "1.6"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlLight", "AtmosCombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForce",       "20"},
                                {"MaxSpeed",          "105"},
                                {"Falloff",           "0.4"},
                                {"BoostThrustForce",  "80"},
                                {"BoostMaxSpeed",     "125"},
                                {"BoostFalloff",      "0.3"},
                                {"BoostingTurnDamp",  "0.3"},
                                {"DirectionBrakeMin", "0.9"},
                                {"DirectionBrake",    "1.1"},
                                {"TurnBrakeMin",      "0.5"},
                                {"TurnBrakeMax",      "2"},
                                {"RollForce",         "1.4"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHeavy", "SpaceEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForce",       "20"},
                                {"Falloff",           "0.6"},
                                {"BoostThrustForce",  "80"},
                                {"BoostMaxSpeed",     "1500"},
                                {"BoostFalloff",      "0.3"},
                                {"DirectionBrakeMin", "0.4"},
                                {"DirectionBrake",    "0.7"},
                                {"ReverseBrake",      "0.25"},
                                {"OverspeedBrake",    "0.2"},
                                {"TurnBrakeMin",      "0.5"},
                                {"TurnBrakeMax",      "1.5"},
                                {"TurnStrength",      "0.6"},
                                {"RollForce",         "1.35"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHeavy", "PlanetEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForce",       "10"},
                                {"MinSpeed",          "0.01"},
                                {"Falloff",           "0.3"},
                                {"BoostThrustForce",  "16"},
                                {"BoostFalloff",      "0.2"},
                                {"BoostingTurnDamp",  "0.1"},
                                {"DirectionBrakeMin", "0.45"},
                                {"DirectionBrake",    "0.75"},
                                {"ReverseBrake",      "0.4"},
                                {"OverspeedBrake",    "2"},
                                {"TurnBrakeMin",      "0.5"},
                                {"TurnBrakeMax",      "1"},
                                {"TurnStrength",      "0.6"},
                                {"RollAmount",        "1.5"},
                                {"RollForce",         "1.15"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHeavy", "CombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForce",       "20"},
                                {"MaxSpeed",          "180"},
                                {"MinSpeed",          "10"},
                                {"Falloff",           "0.6"},
                                {"BoostThrustForce",  "80"},
                                {"BoostMaxSpeed",     "1500"},
                                {"BoostFalloff",      "0.3"},
                                {"DirectionBrakeMin", "0.4"},
                                {"DirectionBrake",    "0.7"},
                                {"ReverseBrake",      "0.25"},
                                {"OverspeedBrake",    "0.2"},
                                {"TurnBrakeMin",      "0.5"},
                                {"TurnBrakeMax",      "2"},
                                {"TurnStrength",      "0.6"},
                                {"RollForce",         "1.35"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHeavy", "AtmosCombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForce",       "10"},
                                {"MaxSpeed",          "110"},
                                {"Falloff",           "0.3"},
                                {"BoostThrustForce",  "16"},
                                {"BoostMaxSpeed",     "130"},
                                {"BoostFalloff",      "0.2"},
                                {"DirectionBrakeMin", "0.45"},
                                {"DirectionBrake",    "0.75"},
                                {"ReverseBrake",      "0.4"},
                                {"OverspeedBrake",    "2"},
                                {"TurnBrakeMin",      "0.5"},
                                {"TurnBrakeMax",      "2"},
                                {"TurnStrength",      "0.6"},
                                {"RollForce",         "1.15"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHover", "SpaceEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForce",       "25"},
                                {"Falloff",           "0.6"},
                                {"BoostThrustForce",  "80"},
                                {"BoostMaxSpeed",     "1200"},
                                {"BoostFalloff",      "0.4"},
                                {"BoostingTurnDamp",  "0.2"},
                                {"DirectionBrakeMin", "0.5"},
                                {"DirectionBrake",    "0.8"},
                                {"ReverseBrake",      "0.25"},
                                {"OverspeedBrake",    "0.4"},
                                {"TurnBrakeMin",      "0.5"},
                                {"TurnBrakeMax",      "1.5"},
                                {"TurnStrength",      "0.75"},
                                {"RollAmount",        "2"},
                                {"RollForce",         "1.35"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHover", "PlanetEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForce",        "15"},
                                {"MaxSpeed",           "125"},
                                {"MinSpeed",           "0.01"},
                                {"Falloff",            "0.4"},
                                {"BoostThrustForce",   "52"},
                                {"BoostMaxSpeed",      "155"},
                                {"BoostFalloff",       "0.3"},
                                {"BoostingTurnDamp",   "0.2"},
                                {"DirectionBrakeMin",  "0.55"},
                                {"DirectionBrake",     "0.85"},
                                {"ReverseBrake",       "0.5"},
                                {"LowSpeedTurnDamper", "0.25"},
                                {"TurnBrakeMin",       "0.5"},
                                {"TurnBrakeMax",       "1"},
                                {"TurnStrength",       "0.75"},
                                {"RollAmount",         "2"},
                                {"RollForce",          "1.15"},
                                {"BalanceTimeMin",     "0.6"},
                                {"BalanceTimeMax",     "0.7"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHover", "CombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForce",       "25"},
                                {"MaxSpeed",          "180"},
                                {"MinSpeed",          "10"},
                                {"Falloff",           "0.6"},
                                {"BoostThrustForce",  "80"},
                                {"BoostMaxSpeed",     "1200"},
                                {"BoostFalloff",      "0.4"},
                                {"BoostingTurnDamp",  "0.2"},
                                {"DirectionBrakeMin", "0.5"},
                                {"DirectionBrake",    "0.8"},
                                {"ReverseBrake",      "0.25"},
                                {"OverspeedBrake",    "0.4"},
                                {"TurnBrakeMin",      "0.5"},
                                {"TurnBrakeMax",      "2"},
                                {"TurnStrength",      "0.75"},
                                {"RollAmount",        "2"},
                                {"RollForce",         "1.35"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHover", "AtmosCombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForce",       "15"},
                                {"MaxSpeed",          "105"},
                                {"Falloff",           "0.4"},
                                {"BoostThrustForce",   "52"},
                                {"BoostMaxSpeed",     "125"},
                                {"BoostFalloff",      "0.3"},
                                {"BoostingTurnDamp",  "0.2"},
                                {"DirectionBrakeMin", "0.55"},
                                {"DirectionBrake",    "0.85"},
                                {"TurnBrakeMin",      "0.5"},
                                {"TurnBrakeMax",      "2"},
                                {"TurnStrength",      "0.75"},
                                {"RollAmount",        "2"},
                                {"RollForce",         "1.15"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlBonusC"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForceMax", "10"},
                                {"ThrustForceMin", "0"},
                                {"MaxSpeedMax",    "5"},
                                {"MaxSpeedMin",    "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlBonusB"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForceMax", "20"},
                                {"ThrustForceMin", "10"},
                                {"MaxSpeedMax",    "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlBonusA"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForceMax", "30"},
                                {"ThrustForceMin", "20"},
                                {"MaxSpeedMin",    "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlBonusS"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForceMax", "40"},
                                {"ThrustForceMin", "30"},
                                {"MaxSpeedMin",    "10"},
                            }
                        },
                    }
                }
            }
        }
    }
}