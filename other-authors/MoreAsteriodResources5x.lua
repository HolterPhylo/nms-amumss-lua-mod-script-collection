NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "MoreAsteriodResources5x.pak", 
["MOD_AUTHOR"]				= "Weasel",
["LUA_AUTHOR"]				= "Weasel",
["NMS_VERSION"]				= "5.29.0.1",
["MOD_DESCRIPTION"]			= "Modifies asteroids to provide more resources. ",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCSOLARGENERATIONGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"RareAsteroidMinResources", "25"},             -- orginally 5
								{"RareAsteroidMaxResources", "50"},            -- orginally 10
								{"CommonAsteroidMinResources", "15"},           -- orginally 3
								{"CommonAsteroidMaxResources", "25"},           -- orginally 5
								{"FuelAsteroidMultiplier", "15"},               -- orginally 10
								{"CommonAsteroidResourceFuelMultiplier", "7"}, -- orginally 5

							}
						}
					}
				}
			}
		}
	}	
}