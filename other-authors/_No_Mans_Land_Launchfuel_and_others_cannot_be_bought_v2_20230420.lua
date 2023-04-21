Author = "Youngneil1"		--now barebones file was once by Gumsk, edited by Xenonex and now by Youngneil1
ModName = "No Mans Land"
ModNameSub = "Launchfuel cannot be bought"
BaseDescription = "Excludes Launchfuel from all sales, like from terminals, when playing on highest scarcity of goods gameplay setting"
GameVersion = "420"
ModVersion = "a"
FileSource1 = "GCGAMEPLAYGLOBALS.GLOBAL.MBIN"

TEXT_TO_ADD =
[[
        <Property value="NMSString0x10.xml">					
			<Property name="Value" value="LAUNCHFUEL" />
		</Property>
		<Property value="NMSString0x10.xml">					
			<Property name="Value" value="JELLY" />
		</Property>
		<Property value="NMSString0x10.xml">					
			<Property name="Value" value="POWERCELL2" />
		</Property>
]]

NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
["MOD_DESCRIPTION"]	= BaseDescription,
["MOD_AUTHOR"]		= Author,
["NMS_VERSION"]		= GameVersion,
["MODIFICATIONS"]	= {
{
	["MBIN_CHANGE_TABLE"] = {
		{
			["MBIN_FILE_SOURCE"] = FileSource1,
			["EXML_CHANGE_TABLE"] = {
				
				{
					["SPECIAL_KEY_WORDS"] = {"Low","GcItemShopAvailabilityDifficultyOptionData.xml"},
					["PRECEDING_KEY_WORDS"] = "PRODFUEL2",
					["REPLACE_TYPE"] = "ADDAFTERSECTION",
					["ADD"] = TEXT_TO_ADD, 
				},
			}
		},
	}
},
}}
