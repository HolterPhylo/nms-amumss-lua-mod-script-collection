ModName = "PTSd Exocraft scanner Changes"
GameVersion = "4_71"

AddMechScan0 = 
[[<Property value="GcTechnology.xml">
      <Property name="ID" value="MECH_SCAN0" />
      <Property name="Group" value="" />
      <Property name="Name" value="MINOTAUR ULTRA RADAR ARRAY" />
      <Property name="NameLower" value="Minotaur Ultra Radar Array" />
      <Property name="Subtitle" value="UI_MECH_SCAN_SUB" />
      <Property name="Description" value="Allows for additional building types to be acquired by the Minotaur Basic Radar Array." />
      <Property name="Teach" value="False" />
      <Property name="HintStart" value="" />
      <Property name="HintEnd" value="" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/TECHNOLOGY/VEHICLE/RENDER.SCAN.DDS" />
        <Property name="ResHandle" value="GcResource.xml">
          <Property name="ResourceID" value="0" />
        </Property>
      </Property>
      <Property name="Colour" value="Colour.xml">
        <Property name="R" value="0.03529412" />
        <Property name="G" value="0.36078432" />
        <Property name="B" value="0.46666667" />
        <Property name="A" value="1" />
      </Property>
      <Property name="Level" value="1" />
      <Property name="Chargeable" value="False" />
      <Property name="ChargeAmount" value="100" />
      <Property name="ChargeType" value="GcRealitySubstanceCategory.xml">
        <Property name="SubstanceCategory" value="Earth" />
      </Property>
      <Property name="ChargeBy" />
      <Property name="ChargeMultiplier" value="1" />
      <Property name="BuildFullyCharged" value="False" />
      <Property name="UsesAmmo" value="False" />
      <Property name="AmmoId" value="" />
      <Property name="PrimaryItem" value="False" />
      <Property name="Upgrade" value="True" />
      <Property name="Core" value="False" />
      <Property name="RepairTech" value="False" />
      <Property name="Procedural" value="False" />
      <Property name="Category" value="GcTechnologyCategory.xml">
        <Property name="TechnologyCategory" value="Mech" />
      </Property>
      <Property name="Rarity" value="GcTechnologyRarity.xml">
        <Property name="TechnologyRarity" value="Impossible" />
      </Property>
      <Property name="Value" value="10" />
      <Property name="Requirements">
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="ATLAS_SEED_6" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Product" />
          </Property>
          <Property name="Amount" value="1" />
        </Property>
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="ASTEROID2" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance" />
          </Property>
          <Property name="Amount" value="50" />
        </Property>
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="TECH_COMP" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Product" />
          </Property>
          <Property name="Amount" value="1" />
        </Property>
      </Property>
      <Property name="BaseStat" value="GcStatsTypes.xml">
        <Property name="StatsType" value="Vehicle_Scan" />
      </Property>
      <Property name="StatBonuses">
        <Property value="GcStatsBonus.xml">
          <Property name="Stat" value="GcStatsTypes.xml">
            <Property name="StatsType" value="Vehicle_Scan" />
          </Property>
          <Property name="Bonus" value="1" />
          <Property name="Level" value="3" />
        </Property>
      </Property>
      <Property name="RequiredTech" value="" />
      <Property name="RequiredLevel" value="0" />
      <Property name="FocusLocator" value="" />
      <Property name="UpgradeColour" value="Colour.xml">
        <Property name="R" value="1" />
        <Property name="G" value="1" />
        <Property name="B" value="1" />
        <Property name="A" value="1" />
      </Property>
      <Property name="LinkColour" value="Colour.xml">
        <Property name="R" value="0.09803922" />
        <Property name="G" value="0.34117648" />
        <Property name="B" value="0.44313726" />
        <Property name="A" value="1" />
      </Property>
      <Property name="RewardGroup" value="" />
      <Property name="BaseValue" value="1" />
      <Property name="Cost" value="GcItemPriceModifiers.xml">
        <Property name="SpaceStationMarkup" value="0" />
        <Property name="LowPriceMod" value="0" />
        <Property name="HighPriceMod" value="0" />
        <Property name="BuyBaseMarkup" value="0" />
        <Property name="BuyMarkupMod" value="0" />
      </Property>
      <Property name="RequiredRank" value="1" />
      <Property name="DispensingRace" value="GcAlienRace.xml">
        <Property name="AlienRace" value="None" />
      </Property>
      <Property name="FragmentCost" value="240" />
      <Property name="TechShopRarity" value="GcTechnologyRarity.xml">
        <Property name="TechnologyRarity" value="Impossible" />
      </Property>
      <Property name="WikiEnabled" value="True" />
      <Property name="DamagedDescription" value="" />
      <Property name="ParentTechId" value="" />
      <Property name="IsTemplate" value="False" />
	  <Property name="ExclusivePrimaryStat" value="False" />
    </Property>]]

AddSubBinocs0 = 
[[<Property value="GcTechnology.xml">
      <Property name="ID" value="SUB_BINOCS0" />
      <Property name="Group" value="" />
      <Property name="Name" value="UI_SUB_BINOCS_NAME" />
      <Property name="NameLower" value="UI_SUB_BINOCS_NAME_L" />
      <Property name="Subtitle" value="UI_SUB_BINOCS_SUB" />
      <Property name="Description" value="Allows for additional building types to be acquired by the Basic Sonar." />
      <Property name="Teach" value="False" />
      <Property name="HintStart" value="" />
      <Property name="HintEnd" value="" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/TECHNOLOGY/VEHICLE/RENDER.SUBSCAN.DDS" />
        <Property name="ResHandle" value="GcResource.xml">
          <Property name="ResourceID" value="0" />
        </Property>
      </Property>
      <Property name="Colour" value="Colour.xml">
        <Property name="R" value="0.03529412" />
        <Property name="G" value="0.36078432" />
        <Property name="B" value="0.46666667" />
        <Property name="A" value="1" />
      </Property>
      <Property name="Level" value="1" />
      <Property name="Chargeable" value="False" />
      <Property name="ChargeAmount" value="100" />
      <Property name="ChargeType" value="GcRealitySubstanceCategory.xml">
        <Property name="SubstanceCategory" value="Earth" />
      </Property>
      <Property name="ChargeBy" />
      <Property name="ChargeMultiplier" value="1" />
      <Property name="BuildFullyCharged" value="True" />
      <Property name="UsesAmmo" value="False" />
      <Property name="AmmoId" value="" />
      <Property name="PrimaryItem" value="False" />
      <Property name="Upgrade" value="True" />
      <Property name="Core" value="False" />
      <Property name="RepairTech" value="False" />
      <Property name="Procedural" value="False" />
      <Property name="Category" value="GcTechnologyCategory.xml">
        <Property name="TechnologyCategory" value="Submarine" />
      </Property>
      <Property name="Rarity" value="GcTechnologyRarity.xml">
        <Property name="TechnologyRarity" value="Impossible" />
      </Property>
      <Property name="Value" value="10" />
      <Property name="Requirements">
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="MIRROR" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Product" />
          </Property>
          <Property name="Amount" value="1" />
        </Property>
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="VENTGEM" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Product" />
          </Property>
          <Property name="Amount" value="3" />
        </Property>
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="ATLAS_SEED_6" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Product" />
          </Property>
          <Property name="Amount" value="1" />
        </Property>
      </Property>
      <Property name="BaseStat" value="GcStatsTypes.xml">
        <Property name="StatsType" value="Vehicle_Scan" />
      </Property>
      <Property name="StatBonuses">
        <Property value="GcStatsBonus.xml">
          <Property name="Stat" value="GcStatsTypes.xml">
            <Property name="StatsType" value="Vehicle_Scan" />
          </Property>
          <Property name="Bonus" value="1" />
          <Property name="Level" value="3" />
        </Property>
      </Property>
      <Property name="RequiredTech" value="" />
      <Property name="RequiredLevel" value="0" />
      <Property name="FocusLocator" value="" />
      <Property name="UpgradeColour" value="Colour.xml">
        <Property name="R" value="1" />
        <Property name="G" value="1" />
        <Property name="B" value="1" />
        <Property name="A" value="1" />
      </Property>
      <Property name="LinkColour" value="Colour.xml">
        <Property name="R" value="0.2" />
        <Property name="G" value="0.6" />
        <Property name="B" value="1" />
        <Property name="A" value="1" />
      </Property>
      <Property name="RewardGroup" value="" />
      <Property name="BaseValue" value="1" />
      <Property name="Cost" value="GcItemPriceModifiers.xml">
        <Property name="SpaceStationMarkup" value="0" />
        <Property name="LowPriceMod" value="0" />
        <Property name="HighPriceMod" value="0" />
        <Property name="BuyBaseMarkup" value="0" />
        <Property name="BuyMarkupMod" value="0" />
      </Property>
      <Property name="RequiredRank" value="1" />
      <Property name="DispensingRace" value="GcAlienRace.xml">
        <Property name="AlienRace" value="None" />
      </Property>
      <Property name="FragmentCost" value="240" />
      <Property name="TechShopRarity" value="GcTechnologyRarity.xml">
        <Property name="TechnologyRarity" value="Impossible" />
      </Property>
      <Property name="WikiEnabled" value="True" />
      <Property name="DamagedDescription" value="" />
      <Property name="ParentTechId" value="" />
      <Property name="IsTemplate" value="False" />
	  <Property name="ExclusivePrimaryStat" value="False" />
    </Property>]]

AddMechScan0Tree =
[[<Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="MECH_SCAN0" />
                        <Property name="Children" />
                      </Property>]]

AddSubBinocs0Tree =
[[<Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="SUB_BINOCS" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="SUB_BINOCS0" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>]]

NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]		= ModName..GameVersion..".pak",
["MOD_DESCRIPTION"]		= "Removes Drop Pod from the options for Exocraft Scanner targets. Moves Monolith Scanning from Signal Booster Tau to Advanced Signal Booster to replace it. Splits Nautilon & Minotaur Scanners into 2 separate techs",
["MOD_AUTHOR"]			= "Xen0nex",
["NMS_VERSION"]			= GameVersion,
["MODIFICATIONS"]		= {{
["MBIN_CHANGE_TABLE"]	= {
	{
		["MBIN_FILE_SOURCE"] 	= {"METADATA\SIMULATION\SCANNING\VEHICLESCANTABLE.MBIN"},
		["EXML_CHANGE_TABLE"] 	= 
		{
			{
				["SPECIAL_KEY_WORDS"] = {"Value","DROPPOD"},
				--["PRECEDING_KEY_WORDS"] = {""},
				["SECTION_UP"] = 2,
				["REMOVE"] = "SECTION"
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Value","MONOLITH"},
				--["PRECEDING_KEY_WORDS"] = {""},
				["SECTION_UP"] = 2,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"RequiredTech", "VEHICLE_SCAN1"}
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Name","SUB_RADAR_SCAN_CRASH"},
				--["SECTION_UP"] = 2,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"RequiredTech", "SUB_BINOCS0"}
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Name","SUB_RADAR_SCAN_FREIGHTER"},
				--["SECTION_UP"] = 2,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"RequiredTech", "SUB_BINOCS0"}
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Name","MECH_SCAN_FACT"},
				--["SECTION_UP"] = 2,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"RequiredTech", "MECH_SCAN0"}
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Name","MECH_SCAN_CRASH"},
				--["SECTION_UP"] = 2,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"RequiredTech", "MECH_SCAN0"}
				}
			},
		}
	},
	{
		["MBIN_FILE_SOURCE"] 	= {"METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN"},
		["EXML_CHANGE_TABLE"] 	= 
		{
			{
				["PRECEDING_KEY_WORDS"] = {"GcTechnology.xml"},
				["REPLACE_TYPE"] = "ADDAFTERSECTION",
				["ADD"] = AddMechScan0
			},
			{
				["PRECEDING_KEY_WORDS"] = {"GcTechnology.xml"},
				["REPLACE_TYPE"] = "ADDAFTERSECTION",
				["ADD"] = AddSubBinocs0
			},
			{
				["SPECIAL_KEY_WORDS"] = {"ID","MECH_SCAN"},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"Name", "MINOTAUR BASIC RADAR ARRAY"},
					{"NameLower", "Minotaur Basic Radar Array"},
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"ID","SUB_BINOCS"},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"Name", "BASIC SONAR"},
					{"NameLower", "Basic Sonar"},
				}
			},
		}
	},
	{
		["MBIN_FILE_SOURCE"] 	= {"METADATA/REALITY/TABLES/UNLOCKABLEITEMTREES.MBIN"},
		["EXML_CHANGE_TABLE"] 	= 
		{
			{
				["SPECIAL_KEY_WORDS"] = {"ExocraftTech", "GcUnlockableItemTrees.xml",		"Title", "UI_EXOCRAFT_TECH_TREE",		"Unlockable", "MECH_PILOT"},
				["REPLACE_TYPE"] = "ADDAFTERSECTION",
				["ADD"] = AddMechScan0Tree
			},
			{
				["SPECIAL_KEY_WORDS"] = {"S9ExoTech", "GcUnlockableItemTrees.xml",		"Title", "UI_EXOCRAFT_TECH_TREE",		"Unlockable", "MECH_PILOT"},
				["REPLACE_TYPE"] = "ADDAFTERSECTION",
				["ADD"] = AddMechScan0Tree
			},
			{
				["SPECIAL_KEY_WORDS"] = {"ExocraftTech", "GcUnlockableItemTrees.xml",		"Title", "UI_EXOCRAFT_TECH_TREE",		"Unlockable", "SUB_GUN"},
				["REMOVE"] = "SECTION"
			},
			{
				["SPECIAL_KEY_WORDS"] = {"ExocraftTech", "GcUnlockableItemTrees.xml",		"Title", "UI_EXOCRAFT_TECH_TREE",		"Unlockable", "SUB_BINOCS"},
				--["SECTION_UP"] = 1,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"Unlockable", "SUB_GUN"}
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"ExocraftTech", "GcUnlockableItemTrees.xml",		"Title", "UI_EXOCRAFT_TECH_TREE",		"Unlockable", "SUB_GUN"},
				["REPLACE_TYPE"] = "ADDAFTERSECTION",
				["ADD"] = AddSubBinocs0Tree
			},
			{
				["SPECIAL_KEY_WORDS"] = {"S9ExoTech", "GcUnlockableItemTrees.xml",		"Title", "UI_EXOCRAFT_TECH_TREE",		"Unlockable", "SUB_GUN"},
				["REMOVE"] = "SECTION"
			},
			{
				["SPECIAL_KEY_WORDS"] = {"S9ExoTech", "GcUnlockableItemTrees.xml",		"Title", "UI_EXOCRAFT_TECH_TREE",		"Unlockable", "SUB_BINOCS"},
				--["SECTION_UP"] = 1,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"Unlockable", "SUB_GUN"}
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"S9ExoTech", "GcUnlockableItemTrees.xml",		"Title", "UI_EXOCRAFT_TECH_TREE",		"Unlockable", "SUB_GUN"},
				["REPLACE_TYPE"] = "ADDAFTERSECTION",
				["ADD"] = AddSubBinocs0Tree
			},
		}
	}
}}}}