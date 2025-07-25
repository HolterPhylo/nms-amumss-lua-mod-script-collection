Author = "alchemist"
ModName = "GPS"
BaseDescription = [[Overhaul to Freighter, Ship, and Signal Scanner capabilities. Find nearest 
building by type or planet by biome. Optional costs and tech requirements.

https://www.nexusmods.com/nomanssky/mods/2144]]
GameVersion = "5-52"
ModVersion = "2-7-0"

--

Config = {
  SeasonAdrift = {
    -- Use GPS Signal Scanner dialog instead of the expedition's dialog
    OverrideSignalScannerDialog = false,
  }
}

NMS_MOD_DEFINITION_CONTAINER = {

MOD_FILENAME      = Author.."_"..ModName.."_"..GameVersion.."_"..ModVersion..".pak",
MOD_DESCRIPTION   = BaseDescription,
MOD_AUTHOR        = Author,
NMS_VERSION       = GameVersion,

--

MODIFICATIONS = {{
  MBIN_CHANGE_TABLE = {

  } -- END MBIN_CHANGE_TABLE
}} -- END MODIFICATIONS

} -- END NMS_MOD_DEFINITION_CONTAINER

--

Ref = NMS_MOD_DEFINITION_CONTAINER.MODIFICATIONS[1].MBIN_CHANGE_TABLE;

local navigatorDialog = [[        <Property value="GcAlienPuzzleOption">
          <Property name="Name" value="ALCH_SCAN_MENU_PQ_NAME"/>
          <Property name="Text" value=""/>
          <Property name="IsAlien" value="False"/>
          <Property name="Cost" value=""/>
          <Property name="Rewards"/>
          <Property name="Mood" value="GcAlienMood">
            <Property name="Mood" value="Neutral"/>
          </Property>
          <Property name="Prop" value="GcNPCPropType">
            <Property name="NPCProp" value="HoloSolarSystem"/>
          </Property>
          <Property name="OverrideWithAlienWord" value="False" />
          <Property name="ReseedInteractionOnUse" value="False" />
          <Property name="KeepOpen" value="True"/>
          <Property name="DisplayCost" value="True"/>
          <Property name="TruncateCost" value="False"/>
          <Property name="MarkInteractionComplete" value="True"/>
          <Property name="NextInteraction" value="D_ALSCFB_HOME"/>
          <Property name="SelectedOnBackOut" value="False"/>
          <Property name="AudioEvent" value="GcAudioWwiseEvents">
            <Property name="AkEvent" value="INVALID_EVENT"/>
          </Property>
          <Property name="TitleOverride" value=""/>
          <Property name="EnablingConditionTest" value="GcMissionConditionTest">
            <Property name="ConditionTest" value="AnyFalse"/>
          </Property>
          <Property name="EnablingConditions"/>
          <Property name="EnablingConditionId" value=""/>
          <Property name="WordCategory" value="GcWordCategoryTableEnum">
            <Property name="wordcategorytableEnum" value="MISC"/>
          </Property>
        </Property>]]

table.insert(Ref, 1, {
  MBIN_FILE_SOURCE = "METADATA/REALITY/TABLES/NMS_DIALOG_GCALIENPUZZLETABLE.MBIN",
  EXML_CHANGE_TABLE = {
    -- remove original signal scanner dialog so quest injected dialog takes over
    {
      SPECIAL_KEY_WORDS = {"Id", "SIGNALSCANNER"},
      REMOVE = "SECTION",
    },

    -- remove econ scanner dialog so quest injected dialog takes over
    {
      SPECIAL_KEY_WORDS = {"Id", "%?ECON_SCANNER"},
      -- SPECIAL_KEY_WORDS = {"Id", "?ECON_SCANNER"},
      REMOVE = "SECTION",
    },

    -- add dialog option to freighter navigator
    {
      SPECIAL_KEY_WORDS = {"Id", "FLEET_NAVIGATOR", "Name", "NPC_NAVIGATOR_OPT_B"},
      LINE_OFFSET = -2,
      ADD = navigatorDialog,
      REPLACE_TYPE = "ALL"
    },
    {
      SPECIAL_KEY_WORDS = {"Id", "FLEET_NAVIGATOR_NEW", "Name", "NPC_NAVIGATOR_OPT_B"},
      LINE_OFFSET = -2,
      ADD = navigatorDialog,
      REPLACE_TYPE = "ALL"
    },
    {
      SPECIAL_KEY_WORDS = {"Id", "FLEET_NAVIGATOR_FULL_POST", "Name", "ALL_REQUEST_LEAVE"},
      LINE_OFFSET = -2,
      ADD = navigatorDialog,
      REPLACE_TYPE = "ALL"
    },
  }
})

if Config.SeasonAdrift.OverrideSignalScannerDialog then
  table.insert(Ref, {
    MBIN_FILE_SOURCE = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/TECH/SIGNALSCANNER/ENTITIES/SIGNALSCANNER.ENTITY.MBIN",
    EXML_CHANGE_TABLE = {
      {
        SPECIAL_KEY_WORDS = { "Mission", "S13_DUMMY" },
        REMOVE = "SECTION",
      },
    }
  })
end