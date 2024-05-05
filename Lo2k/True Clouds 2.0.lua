NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "True Clouds 2.0.pak", 
["MOD_AUTHOR"]				= "Lo2k",
["LUA_AUTHOR"]				= "Lo2k",
["NMS_VERSION"]				= "4.65",
["MOD_DESCRIPTION"]			= "This mods changes clouds to prevent them looking like floating cones",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCENVIRONMENTGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"WindOffset"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"x",	"0.3"},
								{"y",	"0.3"},
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"CloudHeightGradient1"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"x",	"0.08"},
								{"y",	"0.1"},
								{"z",	"0.12"},
								{"t",	"0.15"},
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"CloudHeightGradient2"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"x",	"0.0"},
								{"y",	"0.1"},
								{"z",	"0.15"},
								{"t",	"0.3"},
							}		
						},
						{
							["PRECEDING_KEY_WORDS"] = {"CloudHeightGradient3"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"z",	"0.2"},
								{"t",	"0.55"},
							}		
						}
					}
				}
			}
		}
	}	
}