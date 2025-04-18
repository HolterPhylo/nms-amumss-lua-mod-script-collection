NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Destroyable Damaged Machineries 1.7.pak", 
["MOD_AUTHOR"]				= "Lo2k",
["LUA_AUTHOR"]				= "Lo2k",
["NMS_VERSION"]				= "5.21",
["MOD_DESCRIPTION"]			= "This mod makes damaged machineries destroyable",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= {"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\LEVELONEOBJECTS\FULL.MBIN", "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\LEVELONEOBJECTS\FULLSAFE.MBIN"},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/DEBRIS/DEBRISLARGE_COMMON.SCENE.MBIN",},
							["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"DestroyedByTerrainEdit", "True"},
							}
						},
					},
				}	
			}
		}
	}	
}