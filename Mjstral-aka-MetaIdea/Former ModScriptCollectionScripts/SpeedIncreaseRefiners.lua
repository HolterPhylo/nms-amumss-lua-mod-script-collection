
-- 0.5 = faster*2
-- 2 = would take two times to produce same result
-- don't use 0, refiner won't work
REFINER_TIME_FACTOR = 0.5  


REFINER_AMMOUNT_FACTOR = 1 

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "SpeedIncreaseRefiners.pak",
["MOD_AUTHOR"]				= "Mjjstral",
["NMS_VERSION"]				= "1.77",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	=
            {
              "METADATA\REALITY\TABLES\NMS_REALITY_GCRECIPETABLE.MBIN",
            },
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
                            ["INTEGER_TO_FLOAT"] = "FORCE",
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TimeToMake",				REFINER_TIME_FACTOR},
								{"Amount",					REFINER_AMMOUNT_FACTOR}
							}
						}
					} --3652 global replacements
				}
			}
		}
	}	
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
