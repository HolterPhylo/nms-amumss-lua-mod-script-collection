Diffuse = "TEXTURES/PLANETS/BIOMES/COMMON/BUILDINGS/SHARED/COMMON/HFLANDINGPAD_CHROMEFUTURA.DDS" -- DIFFUSE MAP
Masks = "TEXTURES/PLANETS/BIOMES/COMMON/BUILDINGS/SHARED/COMMON/HFLANDINGPAD_CHROMEFUTURA.MASKS.DDS" -- MASKS MAP
Normal = "TEXTURES/PLANETS/BIOMES/COMMON/BUILDINGS/SHARED/COMMON/HFLANDINGPAD_CHROMEFUTURA.NORMAL.DDS" -- NORMAL MAP
LogoDiffuse = "TEXTURES/PLANETS/BIOMES/COMMON/BUILDINGS/SHARED/BUILDABLEBUILDINGS/LOGODECAL_HFLANDPADWHITE.5.DDS" -- DIFFUSE MAP FOR BLUE LOGO

Version = "1.3"
Game_Version = "5.28"
Mod_Author = "hemis FEAR"
Lua_Author = "hemis FEAR"

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]	= "_hF_fLandPad_ChromeFutura_"..Version..".pak",
["MOD_AUTHOR"]		= Mod_Author,
["LUA_AUTHOR"]		= Lua_Author,
["NMS_VERSION"]		= Game_Version,
["MOD_VERSION"] 	= Version,
["MOD_DESCRIPTION"]	= "fLandPad: Chrome Futura Freighter Hangar Landing Pad",
["MODIFICATIONS"]	= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS/COMMON/SPACECRAFT/INDUSTRIAL/ACCESSORIES/LANDINGPAD_HANGAR/COMMONTILED_MAT.MATERIAL.MBIN",	
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name","gDiffuseMap",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "Map", Diffuse } --Original "TEXTURES/PLANETS/BIOMES/COMMON/BUILDINGS/SHARED/COMMON/COMMONTILLED.DDS" 
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","gMasksMap",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "Map", Masks } --Original "TEXTURES/PLANETS/BIOMES/COMMON/BUILDINGS/SHARED/COMMON/COMMONTILLED.MASKS.DDS" 
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","gNormalMap",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "Map", Normal } --Original "TEXTURES/PLANETS/BIOMES/COMMON/BUILDINGS/SHARED/COMMON/COMMONTILLED.NORMAL.DDS"
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "gMaterialParamsVec4"},
							["INTEGER_TO_FLOAT"]    = "FORCE",							
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"x",	"1"}-- Original "0.9"
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "gMaterialParamsVec4"},
							["INTEGER_TO_FLOAT"]    = "FORCE",							
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"z",	"0.5"}-- Original "1"
							}
						}
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS/COMMON/SPACECRAFT/INDUSTRIAL/ACCESSORIES/LANDINGPAD_HANGAR/LOGO2DECAL1.MATERIAL.MBIN",	
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name","gDiffuseMap",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "Map", LogoDiffuse } --Original "TEXTURES/PLANETS/BIOMES/COMMON/BUILDINGS/SHARED/BUILDABLEBUILDINGS/LOGODECAL.5.DDS" 
							}
						}
					}
				}
			}
		}
	}	
}