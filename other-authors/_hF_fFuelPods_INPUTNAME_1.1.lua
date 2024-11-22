Version = "1.1"
Game_Version = "5.28"
Mod_Author = "hemis FEAR"
Lua_Author = "hemis FEAR"

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]	= "_hF_fFuelPods_INPUTNAME_"..Version..".pak",
["MOD_AUTHOR"]		= Mod_Author,
["LUA_AUTHOR"]		= Lua_Author,
["NMS_VERSION"]		= Game_Version,
["MOD_VERSION"] 	= Version,
["MOD_DESCRIPTION"]	= "fFuelPods: INPUT NAME Freighter Fuel Pods",
["MODIFICATIONS"]	= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	=	"MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGARPROPS/FUELPOD/ENTITIES/COLOURDATA.ENTITY.MBIN",
					["EXML_CHANGE_TABLE"] 	=
										{
						{
							["PRECEDING_KEY_WORDS"] = {"PrimaryColour"},
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R",		"0"}, 	--Original "0.318"	
								{"G",		"0"}, 	--Original "0.569"
								{"B",		"0"}, 	--Original "0.624"
							} 	--PUT COLOR NAME HERE OR DELETE
						},
						{
							["PRECEDING_KEY_WORDS"] = {"SecondaryColour"},
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R",		"0"}, 	--Original "0.922"
								{"G",		"0"}, 	--Original "0.922"
								{"B",		"0"}, 	--Original "0.922"
							} 	-- PUT COLOR NAME HERE OR DELETE
						},
						{
							["PRECEDING_KEY_WORDS"] = {"TernaryColour"},
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R",		"0"}, 	--Original "0.878"
								{"G",		"0"}, 	--Original "0.478"
								{"B",		"0"}, 	--Original "0.031"
							} 	-- PUT COLOR NAME HERE OR DELETE
						}
					}
				} 
			}
		}, --9 global replacements
	}	
}
-- ANYTHING GREEN IS FOR NOTES / REFERENCE ONLY
-- REPLACE "0" WITH APPROPRIATE NUMBERS