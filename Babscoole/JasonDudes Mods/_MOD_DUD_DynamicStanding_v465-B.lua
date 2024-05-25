ER_TRADE =
[[
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="50" />
            <Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardFactionStanding.xml">
              <Property name="Faction" value="GcMissionFaction.xml">
                <Property name="MissionFaction" value="TradeGuild" />
              </Property>
              <Property name="AmountMin" value="1" />
              <Property name="AmountMax" value="1" />
              <Property name="SetToMinBeforeAdd" value="False" />
            </Property>
          </Property>
]]

ER_TRADE_LOW =
[[
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="10" />
            <Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardFactionStanding.xml">
              <Property name="Faction" value="GcMissionFaction.xml">
                <Property name="MissionFaction" value="TradeGuild" />
              </Property>
              <Property name="AmountMin" value="1" />
              <Property name="AmountMax" value="1" />
              <Property name="SetToMinBeforeAdd" value="False" />
            </Property>
          </Property>
]]

ER_WAR =
[[
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="50" />
            <Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardFactionStanding.xml">
              <Property name="Faction" value="GcMissionFaction.xml">
                <Property name="MissionFaction" value="WarriorGuild" />
              </Property>
              <Property name="AmountMin" value="1" />
              <Property name="AmountMax" value="1" />
              <Property name="SetToMinBeforeAdd" value="False" />
            </Property>
          </Property>
]]

ER_WAR_LOW =
[[
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="10" />
            <Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardFactionStanding.xml">
              <Property name="Faction" value="GcMissionFaction.xml">
                <Property name="MissionFaction" value="WarriorGuild" />
              </Property>
              <Property name="AmountMin" value="1" />
              <Property name="AmountMax" value="1" />
              <Property name="SetToMinBeforeAdd" value="False" />
            </Property>
          </Property>
]]

ER_EXPL =
[[
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="50" />
            <Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardFactionStanding.xml">
              <Property name="Faction" value="GcMissionFaction.xml">
                <Property name="MissionFaction" value="ExplorerGuild" />
              </Property>
              <Property name="AmountMin" value="1" />
              <Property name="AmountMax" value="1" />
              <Property name="SetToMinBeforeAdd" value="False" />
            </Property>
          </Property>
]]

ER_STAND =
[[
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="50" />
            <Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardStanding.xml">
              <Property name="Race" value="GcAlienRace.xml">
                <Property name="AlienRace" value="None" />
              </Property>
              <Property name="AmountMin" value="1" />
              <Property name="AmountMax" value="1" />
              <Property name="UseExpeditionEventSystemRace" value="False" />
            </Property>
          </Property>
]]


NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "_MOD_DUD_DynamicStanding_v465-B.pak",
["MOD_AUTHOR"]      = "JasonDude7116",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "4.65",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\REWARDTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "FREIGHTER_SAVED"},
                            ["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml", "GcRewardTableItem.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountMin", "1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "TRADER_REP"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountMin", "1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "PIRATE_BATTLE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountMin", "1"},
                                {"AmountMax", "1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "PIRATE_FIGHT"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountMin", "1"},
                                {"AmountMax", "1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "PIRATE_BOUNTY1"},
                            ["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml", "GcRewardTableItem.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountMax", "1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "PIRATE_BOUNTY2"},
                            ["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml", "GcRewardTableItem.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountMin", "1"},
                                {"AmountMax", "2"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "PIRATE_BOUNTY3"},
                            ["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml", "GcRewardTableItem.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountMin", "1"},
                                {"AmountMax", "3"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "MB_STAND_PIRATE"},
                            ["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountMax", "3"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_CREW_GUILD"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountMin", "1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_CAPT_GUILD"},
                            ["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountMin", "1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "KILLED_CIV"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountMax", "-3"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "DE_SPACE_POI_1"},
                            ["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml"},
                            ["SECTION_ACTIVE"] = {4},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountMin", "1"},
                                {"AmountMax", "2"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "SEC_STDHIGH_WAR"},
                            ["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] =
[[
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="33" />
            <Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardStanding.xml">
              <Property name="Race" value="GcAlienRace.xml">
                <Property name="AlienRace" value="Traders" />
              </Property>
              <Property name="AmountMin" value="-1" />
              <Property name="AmountMax" value="-1" />
              <Property name="UseExpeditionEventSystemRace" value="False" />
            </Property>
          </Property>
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="33" />
            <Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardStanding.xml">
              <Property name="Race" value="GcAlienRace.xml">
                <Property name="AlienRace" value="Explorers" />
              </Property>
              <Property name="AmountMin" value="-1" />
              <Property name="AmountMax" value="-1" />
              <Property name="UseExpeditionEventSystemRace" value="False" />
            </Property>
          </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "SEC_STDHIGH_TRA"},
                            ["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] =
[[
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="33" />
            <Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardStanding.xml">
              <Property name="Race" value="GcAlienRace.xml">
                <Property name="AlienRace" value="Warriors" />
              </Property>
              <Property name="AmountMin" value="-1" />
              <Property name="AmountMax" value="-1" />
              <Property name="UseExpeditionEventSystemRace" value="False" />
            </Property>
          </Property>
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="33" />
            <Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardStanding.xml">
              <Property name="Race" value="GcAlienRace.xml">
                <Property name="AlienRace" value="Explorers" />
              </Property>
              <Property name="AmountMin" value="-1" />
              <Property name="AmountMax" value="-1" />
              <Property name="UseExpeditionEventSystemRace" value="False" />
            </Property>
          </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "SEC_STDHIGH_EXP"},
                            ["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] =
[[
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="33" />
            <Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardStanding.xml">
              <Property name="Race" value="GcAlienRace.xml">
                <Property name="AlienRace" value="Warriors" />
              </Property>
              <Property name="AmountMin" value="-1" />
              <Property name="AmountMax" value="-1" />
              <Property name="UseExpeditionEventSystemRace" value="False" />
            </Property>
          </Property>
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="33" />
            <Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardStanding.xml">
              <Property name="Race" value="GcAlienRace.xml">
                <Property name="AlienRace" value="Traders" />
              </Property>
              <Property name="AmountMin" value="-1" />
              <Property name="AmountMax" value="-1" />
              <Property name="UseExpeditionEventSystemRace" value="False" />
            </Property>
          </Property>
]]
                        },
                        -- {
                            -- ["SPECIAL_KEY_WORDS"] = {"Id", "INTERVN_FAILURE"},
                            -- ["ADD_OPTION"] = "ADDafterSECTION",
                            -- ["ADD"] =
-- [[
    -- <Property value="GcGenericRewardTableEntry.xml">
      -- <Property name="Id" value="INTERVN_F_MSG" />
      -- <Property name="List" value="GcRewardTableItemList.xml">
        -- <Property name="RewardChoice" value="GiveAll" />
        -- <Property name="OverrideZeroSeed" value="False" />
        -- <Property name="UseInventoryChoiceOverride" value="False" />
        -- <Property name="IncrementStat" value="" />
        -- <Property name="List">
          -- <Property value="GcRewardTableItem.xml">
            -- <Property name="PercentageChance" value="100" />
            -- <Property name="LabelID" value="" />
            -- <Property name="Reward" value="GcRewardMissionMessage.xml">
              -- <Property name="MessageID" value="FLEET_FAILURE" />
              -- <Property name="BroadcastInMultiplayer" value="False" />
            -- </Property>
          -- </Property>
        -- </Property>
      -- </Property>
    -- </Property>
-- ]]
                        -- },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Id", "SEC_STDHIGH_WAR"},
                                {"Id", "SEC_STDHIGH_TRA"},
                                {"Id", "SEC_STDHIGH_EXP"},
                            },
                            ["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountMin", "2"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "MB_STAND_GUILD"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountMin", "5"},
                                {"AmountMax", "5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "MB_STAND_HIGH"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountMin", "2"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "MB_STAND_MED"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountMin", "1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "FREIGHTER_SAVED"},
                            ["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml", "GcRewardTableItem.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountMin", "2"},
                            }
                        },
                        -- {
                            -- ["SPECIAL_KEY_WORDS"] =
                            -- {
                                -- {"Id", "R_S9_TREE_SHIP"},
                                -- {"Id", "R_S9_TREE_EXO"},
                                -- {"Id", "R_S9_TREE_WEP"},
                                -- {"Id", "R_S9_TREE_SUIT"},
                            -- },
                            -- ["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml"},
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"UseMatchingExpeditionSeed", "True"},
                            -- }
                        -- },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Id", "RS_S1_S2M6"},
                                {"Id", "RS_S2_S4M5"},
                                {"Id", "RS_S3_S4M5"},
                            },
                            ["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml", "GcRewardTableItem.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountMin", "1"},
                                {"AmountMax", "3"},
                            }
                        },
                        -- {
                            -- ["SPECIAL_KEY_WORDS"] = {"Id", "RS_S2_S4M3"},
                            -- ["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml", "GcRewardTableItem.xml"},
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"AmountMin", "5"},
                                -- {"AmountMax", "5"},
                            -- }
                        -- },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Id", "RS_S6_PARTY1"},
                                {"Id", "RS_S6_PARTY5"},
                                {"Id", "RS_S6_S3M3"},
                            },
                            ["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml", "GcRewardTableItem.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountMin", "2"},
                                {"AmountMax", "4"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Id", "RS_S2_S4M1"},
                                {"Id", "RS_S5_S1M3"},
                            },
                            ["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml", "GcRewardTableItem.xml", "GcRewardTableItem.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountMin", "1"},
                                {"AmountMax", "3"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\EXPEDITIONREWARDTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_DIPLOMATIC_0", "ID", "COMPOUND4"},
                            ["SECTION_UP"] = 1,
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = ER_TRADE
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_DIPLOMATIC_1"},
                            ["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = ER_TRADE_LOW
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_DIPLOMATIC_2"},
                            ["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = ER_TRADE_LOW
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_DIPLOMATIC_3"},
                            ["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = ER_TRADE_LOW
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_COMBAT_0"},
                            ["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = ER_WAR_LOW
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_COMBAT_1", "Reward", "GcRewardMoney.xml"},
                            ["SECTION_UP"] = 1,
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = ER_WAR
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_COMBAT_2"},
                            ["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = ER_WAR_LOW
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_EXPLORATION_0"},
                            ["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml", "GcRewardTableItem.xml", "GcRewardTableItem.xml"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = ER_EXPL
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_EXPLORATION_1", "Reward", "GcRewardMoney.xml"},
                            ["SECTION_UP"] = 1,
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = ER_EXPL
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_EXPLORATION_2", "Reward", "GcRewardMoney.xml"},
                            ["SECTION_UP"] = 1,
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = ER_EXPL
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_EXPLORATION_3", "Reward", "GcRewardMoney.xml"},
                            ["SECTION_UP"] = 1,
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = ER_EXPL
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_MINING_0", "Reward", "GcRewardMoney.xml"},
                            ["SECTION_UP"] = 1,
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = ER_STAND
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_MINING_1", "Reward", "GcRewardProceduralProduct.xml"},
                            ["SECTION_UP"] = 1,
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = ER_STAND
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_MINING_2", "ID", "ALLOY6"},
                            ["SECTION_UP"] = 1,
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = ER_STAND
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_MINING_3", "ID", "ALLOY6"},
                            ["SECTION_UP"] = 1,
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = ER_STAND
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_DIP_EASY_0", "ID", "EXP_CURIO2"},
                            ["SECTION_UP"] = 1,
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = ER_TRADE
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_DIP_EASY_1"},
                            ["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = ER_TRADE_LOW
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_DIP_EASY_2"},
                            ["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = ER_TRADE_LOW
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_DIP_EASY_3"},
                            ["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = ER_TRADE_LOW
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_COM_EASY_0"},
                            ["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = ER_WAR_LOW
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_COM_EASY_1", "Reward", "GcRewardMoney.xml"},
                            ["SECTION_UP"] = 1,
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = ER_WAR
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_COM_EASY_2"},
                            ["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = ER_WAR_LOW
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_EXP_EASY_0"},
                            ["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml", "GcRewardTableItem.xml", "GcRewardTableItem.xml"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = ER_EXPL
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_EXP_EASY_1", "Reward", "GcRewardMoney.xml"},
                            ["SECTION_UP"] = 1,
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = ER_EXPL
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_EXP_EASY_2", "Reward", "GcRewardMoney.xml"},
                            ["SECTION_UP"] = 1,
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = ER_EXPL
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_EXP_EASY_3", "Reward", "GcRewardMoney.xml"},
                            ["SECTION_UP"] = 1,
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = ER_EXPL
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_MINE_EASY_0", "Reward", "GcRewardMoney.xml"},
                            ["SECTION_UP"] = 1,
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = ER_STAND
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_MINE_EASY_1", "Reward", "GcRewardProceduralProduct.xml"},
                            ["SECTION_UP"] = 1,
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = ER_STAND
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_MINE_EASY_2", "ID", "ALLOY6"},
                            ["SECTION_UP"] = 1,
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = ER_STAND
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_MINE_EASY_3", "ID", "ALBUMENPEARL"},
                            ["SECTION_UP"] = 1,
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = ER_STAND
                        },
                        -- {
                            -- ["SPECIAL_KEY_WORDS"] = {"Id", "R_DIP_WHALE", "ID", "ALIEN_TECHBOX"},
                            -- ["SECTION_UP"] = 1,
                            -- ["ADD_OPTION"] = "ADDafterSECTION",
                            -- ["ADD"] = ER_TRADE
                        -- },
                        -- {
                            -- ["SPECIAL_KEY_WORDS"] = {"Id", "R_COM_WHALE", "ID", "ALIEN_TECHBOX"},
                            -- ["SECTION_UP"] = 1,
                            -- ["ADD_OPTION"] = "ADDafterSECTION",
                            -- ["ADD"] = ER_WAR
                        -- },
                        -- {
                            -- ["SPECIAL_KEY_WORDS"] = {"Id", "R_EXP_WHALE", "ID", "ALIEN_TECHBOX"},
                            -- ["SECTION_UP"] = 1,
                            -- ["ADD_OPTION"] = "ADDafterSECTION",
                            -- ["ADD"] = ER_EXPL
                        -- },
                        -- {
                            -- ["SPECIAL_KEY_WORDS"] = {"Id", "R_MIN_WHALE", "ID", "ALIEN_TECHBOX"},
                            -- ["SECTION_UP"] = 1,
                            -- ["ADD_OPTION"] = "ADDafterSECTION",
                            -- ["ADD"] = ER_STAND
                        -- },
                        -- {
                            -- ["SPECIAL_KEY_WORDS"] = {"Id", "R_INT_EXP_20AS2"},
                            -- ["REMOVE"] = "SECTION"
                        -- },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\MISSIONS\RECURRINGMISSIONTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_AF_DAILY_SET"},
                            ["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] =
[[
              <Property value="GcRewardTableItem.xml">
                <Property name="PercentageChance" value="33" />
                <Property name="LabelID" value="" />
                <Property name="Reward" value="GcRewardStanding.xml">
                  <Property name="Race" value="GcAlienRace.xml">
                    <Property name="AlienRace" value="Explorers" />
                  </Property>
                  <Property name="AmountMin" value="-1" />
                  <Property name="AmountMax" value="-1" />
                  <Property name="UseExpeditionEventSystemRace" value="False" />
                </Property>
              </Property>
              <Property value="GcRewardTableItem.xml">
                <Property name="PercentageChance" value="33" />
                <Property name="LabelID" value="" />
                <Property name="Reward" value="GcRewardStanding.xml">
                  <Property name="Race" value="GcAlienRace.xml">
                    <Property name="AlienRace" value="Traders" />
                  </Property>
                  <Property name="AmountMin" value="-1" />
                  <Property name="AmountMax" value="-1" />
                  <Property name="UseExpeditionEventSystemRace" value="False" />
                </Property>
              </Property>
              <Property value="GcRewardTableItem.xml">
                <Property name="PercentageChance" value="33" />
                <Property name="LabelID" value="" />
                <Property name="Reward" value="GcRewardStanding.xml">
                  <Property name="Race" value="GcAlienRace.xml">
                    <Property name="AlienRace" value="Warriors" />
                  </Property>
                  <Property name="AmountMin" value="-1" />
                  <Property name="AmountMax" value="-1" />
                  <Property name="UseExpeditionEventSystemRace" value="False" />
                </Property>
              </Property>
              <Property value="GcRewardTableItem.xml">
                <Property name="PercentageChance" value="10" />
                <Property name="LabelID" value="" />
                <Property name="Reward" value="GcRewardFactionStanding.xml">
                  <Property name="Faction" value="GcMissionFaction.xml">
                    <Property name="MissionFaction" value="ExplorerGuild" />
                  </Property>
                  <Property name="AmountMin" value="-1" />
                  <Property name="AmountMax" value="-1" />
                  <Property name="SetToMinBeforeAdd" value="False" />
                </Property>
              </Property>
              <Property value="GcRewardTableItem.xml">
                <Property name="PercentageChance" value="10" />
                <Property name="LabelID" value="" />
                <Property name="Reward" value="GcRewardFactionStanding.xml">
                  <Property name="Faction" value="GcMissionFaction.xml">
                    <Property name="MissionFaction" value="TradeGuild" />
                  </Property>
                  <Property name="AmountMin" value="-1" />
                  <Property name="AmountMax" value="-1" />
                  <Property name="SetToMinBeforeAdd" value="False" />
                </Property>
              </Property>
              <Property value="GcRewardTableItem.xml">
                <Property name="PercentageChance" value="10" />
                <Property name="LabelID" value="" />
                <Property name="Reward" value="GcRewardFactionStanding.xml">
                  <Property name="Faction" value="GcMissionFaction.xml">
                    <Property name="MissionFaction" value="WarriorGuild" />
                  </Property>
                  <Property name="AmountMin" value="-1" />
                  <Property name="AmountMax" value="-1" />
                  <Property name="SetToMinBeforeAdd" value="False" />
                </Property>
              </Property>
]]
                        },
                    },
                },
            },
        },
    },
}