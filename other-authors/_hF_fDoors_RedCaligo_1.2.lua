DoorDiffuse = "TEXTURES/PLANETS/BIOMES/COMMON/BUILDINGS/SHARED/COMMON/HFENTRANCEDOOR_REDCALIGO.DDS" -- DOOR DIFFUSE
DoorMasks = "TEXTURES/PLANETS/BIOMES/COMMON/BUILDINGS/SHARED/COMMON/HFENTRANCEDOOR_REDCALIGO.MASKS.DDS" -- DOOR MASKS MAP
DoorNormal = "TEXTURES/PLANETS/BIOMES/COMMON/BUILDINGS/SHARED/COMMON/HFENTRANCEDOOR_REDCALIGO.NORMAL.DDS" -- DOOR NORMAL MAP

Version = "1.2"
Game_Version = "5.28"
Mod_Author = "hemis FEAR"
Lua_Author = "hemis FEAR"

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]	= "_hF_fDoors_RedCaligo_"..Version..".pak",
["MOD_AUTHOR"]		= Mod_Author,
["LUA_AUTHOR"]		= Lua_Author,
["NMS_VERSION"]		= Game_Version,
["MOD_VERSION"] 	= Version,
["MOD_DESCRIPTION"]	= "fDoors: Red Caligo Freighter Hangar Doors",
["MODIFICATIONS"]	= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	=	
					{
					"MODELS/COMMON/SPACECRAFT/INDUSTRIAL/ACCESSORIES/HANGARPARTS/HANGARDOOR/HANGARDOOR/HANGARCOMMON_MAT.MATERIAL.MBIN",
					"MODELS/COMMON/SPACECRAFT/INDUSTRIAL/ACCESSORIES/HANGARPARTS/HANGARDOOR/HANGARDOOR_ANIMATED/HANGARCOMMON_SKINNEDMAT.MATERIAL.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name","gDiffuseMap",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "Map", DoorDiffuse } --Original "TEXTURES/PLANETS/BIOMES/COMMON/BUILDINGS/SHARED/COMMON/COMMONTILLED.DDS" 
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","gMasksMap",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "Map", DoorMasks } --Original "TEXTURES/PLANETS/BIOMES/COMMON/BUILDINGS/SHARED/COMMON/COMMONTILLED.MASKS.DDS" 
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","gNormalMap",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "Map", DoorNormal } --Original "TEXTURES/PLANETS/BIOMES/COMMON/BUILDINGS/SHARED/COMMON/COMMONTILLED.NORMAL.DDS"
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "gMaterialParamsVec4"},	
							["INTEGER_TO_FLOAT"]    = "FORCE",							
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"x",	"0"}-- Original "0.9"
							}
						}
					}
				}	
			}
		}
	}	
}