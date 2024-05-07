NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "No Exosuit Chambers in Pirate Stations 2.0.pak", 
["MOD_AUTHOR"]				= "Lo2k",
["LUA_AUTHOR"]				= "Lo2k",
["NMS_VERSION"]				= "4.65",
["MOD_DESCRIPTION"]			= "This mod removes exosuit chambers in Pirate Stations",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= {"MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\BACK_SECTION_PIRATE.SCENE.MBIN"},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "RefCryoChamber",},
							["REMOVE"] 	= "SECTION",
						},
					},
				}	
			}
		}
	}	
}