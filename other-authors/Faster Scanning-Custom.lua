NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "FasterScanning.pak",
["MOD_AUTHOR"]				= "Flugelwulff",
["NMS_VERSION"]				= "4.51",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"BinocTimeBeforeScan",					"0"},	-- Original "0.5"
								{"BinocMinScanTime",					"0"},	-- Original "3.9"
								{"BinocScanTime",						"0"}, 	-- Original "3.9"
								{"BinocCreatureScanTime",				"0"},	-- Original "3.2"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "ToolScan",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PulseRange",					"400"},	-- Original "200"			
								{"ChargeTime",					"2"} 	-- Original "30"		
							}
						},
					}
				}
			}
		}
	}	
}