Author = "Gumsk"
ModName = "GGUI"
ModNameSub = "Faster Load"
BaseDescription = ""
GameVersion = "353"
ModVersion = "a"
FileSource1 = "GCUIGLOBALS.GLOBAL.MBIN"

NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
["MOD_DESCRIPTION"]	= BaseDescription,
["MOD_AUTHOR"]		= Author,
["NMS_VERSION"]		= GameVersion,
["MODIFICATIONS"]	= {{
["MBIN_CHANGE_TABLE"] = {{
["MBIN_FILE_SOURCE"] = FileSource1,
["EXML_CHANGE_TABLE"] = {
	
	{["VALUE_CHANGE_TABLE"] = {
		{"LoadingTravelDistance",1000},
		{"LoadingScreenTravelSpeed",500},
		{"LoadingScreenTime",10},
	},},
	
}},}},}}