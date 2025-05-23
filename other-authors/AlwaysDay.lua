NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "NoMoreNights.pak",
["MOD_AUTHOR"]				= "Hahnsolo5314",
["NMS_VERSION"]				= "1.77",  			--version on first mod release
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.59B126E2.pak", --globals
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCSKYGLOBALS.GLOBALS.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = "",     -- use a single string or a list = {"PrecedingKeyWord1", "PrecedingKeyWord2"}, leave empty "" or {} if not necessary
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinNightFade",				"1.0"}, -- Original "0.62"  always leave the orig. value as a reference
								{"MaxNightFade",				"1.0"},	-- Original "0.68"
							} --2 global replacements	
						}, --for multiple EXML changes with PRECEDING_KEY_WORDS copy this chunk below and add a comma behind this line here
					}
				}, --for multiple MBIN sources: copy this chunk below and add a comma behind this line here
			}
		}, --for multiple pak sources: copy this chunk below and add a comma behind this line here
	}	
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED