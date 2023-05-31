MainDiffuse = "TEXTURES/PLANETS/BIOMES/COMMON/BUILDINGS/SHARED/COMMON/HFHANGARCOMMON_BLUECALIGO.DDS" -- MAIN DIFFUSE MAP
MainMasks = "TEXTURES/PLANETS/BIOMES/COMMON/BUILDINGS/SHARED/COMMON/HFHANGARCOMMON_BLUECALIGO.MASKS.DDS" -- MAIN MASKS MAP
MainNormal = "TEXTURES/PLANETS/BIOMES/COMMON/BUILDINGS/SHARED/COMMON/HFHANGARCOMMON_BLUECALIGO.NORMAL.DDS" -- MAIN NORMAL MAP

FloorDiffuse = "TEXTURES/PLANETS/BIOMES/COMMON/BUILDINGS/SHARED/COMMON/HFHANGARCOMMONSSR_BLUECALIGO.DDS" -- FLOOR DIFFUSE MAP
FloorMasks = "TEXTURES/PLANETS/BIOMES/COMMON/BUILDINGS/SHARED/COMMON/HFHANGARCOMMONSSR_BLUECALIGO.MASKS.DDS" -- FLOOR MASKS MAP
FloorNormal = "TEXTURES/PLANETS/BIOMES/COMMON/BUILDINGS/SHARED/COMMON/HFHANGARCOMMONSSR_BLUECALIGO.NORMAL.DDS" -- FLOOR NORMAL MAP

MetalDiffuse = "TEXTURES/SPACE/SPACESTATION/INTERIOR/METALHORIZONTALPATTERN_HFFREIGHTERHANGAR_BLUECALIGO.DDS" -- METAL DIFFUSE
MetalMasks = "TEXTURES/SPACE/SPACESTATION/INTERIOR/METALHORIZONTALPATTERN_HFFREIGHTERHANGAR_BLUECALIGO.MASKS.DDS" -- METAL MASKS MAP
MetalNormal = "TEXTURES/SPACE/SPACESTATION/INTERIOR/METALHORIZONTALPATTERN_HFFREIGHTERHANGAR_BLUECALIGO.NORMAL.DDS" -- METAL NORMAL MAP

hFArrow = "TEXTURES/COMMON/SPACECRAFT/INDUSTRIAL/HFARROW_ORANGE.DDS" -- CENTER SUPPORT SIDE ARROWS
hFArrow2 = "TEXTURES/COMMON/SPACECRAFT/INDUSTRIAL/HFARROW2_ORANGE.DDS" -- CENTER SUPPORT WALKWAY ARROWS

TilingLight = "TEXTURES/SPACE/COMMON/SPACECRAFT/INDUSTRIAL/SHARED/TILINGLIGHTS.FH_1X.DDS" -- WINDOW TILING LIGHTS

Version = "1.0"
Game_Version = "4.23"
Mod_Author = "hemis FEAR"
Lua_Author = "hemis FEAR"

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]	= "_hF_fHangarRetexture_BlueCaligo_"..Version..".pak",
["MOD_AUTHOR"]		= Mod_Author,
["LUA_AUTHOR"]		= Lua_Author,
["NMS_VERSION"]		= Game_Version,
["MOD_VERSION"] 	= Version,
["MOD_DESCRIPTION"]	= "Blue Caligo: Freighter Hangar Retexture",
["MODIFICATIONS"]	= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	=	
					{
					"MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/CENTRESUPPORT/HANGARCOMMON_MAT1.MATERIAL.MBIN",
					"MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/CENTRESUPPORT/HANGARCOMMON_MAT2.MATERIAL.MBIN",
					"MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGAR/HANGARCOMMON_MAT2.MATERIAL.MBIN",
					"MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGARINTERIOR/HANGARCOMMON_MAT2.MATERIAL.MBIN",
					"MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGARINTERIOR/HANGARCOMMON_MAT22.MATERIAL.MBIN",
					"MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGARINTERIOR_ABAND/HANGARCOMMON_MAT12.MATERIAL.MBIN",
					"MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGARLAYOUT/HANGARCOMMON_MAT2.MATERIAL.MBIN",
					"MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGARLAYOUT/HANGARCOMMON_MAT16.MATERIAL.MBIN",
					"MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGARLAYOUT_ABAND/HANGARCOMMON_MAT2.MATERIAL.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name","gDiffuseMap",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "Map", MainDiffuse } --Original "TEXTURES/PLANETS/BIOMES/COMMON/BUILDINGS/SHARED/COMMON/COMMONTILLED.DDS" 
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","gMasksMap",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "Map", MainMasks } --Original "TEXTURES/PLANETS/BIOMES/COMMON/BUILDINGS/SHARED/COMMON/COMMONTILLED.MASKS.DDS" 
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","gNormalMap",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "Map", MainNormal } --Original "TEXTURES/PLANETS/BIOMES/COMMON/BUILDINGS/SHARED/COMMON/COMMONTILLED.NORMAL.DDS"
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
				},
				{
					["MBIN_FILE_SOURCE"] 	=	
					{
					"MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGARINTERIOR/HANGARCOMMONSSR_MAT.MATERIAL.MBIN",
					"MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGARLAYOUT/HANGARCOMMONSSR_MAT.MATERIAL.MBIN",
					"MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGARPROPS/HANGARFLOORSECTIONA/HANGARCOMMONSSR_MAT.MATERIAL.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name","gDiffuseMap",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "Map", FloorDiffuse } --Original "TEXTURES/PLANETS/BIOMES/COMMON/BUILDINGS/SHARED/COMMON/COMMONTILLEDSSR.DDS" 
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","gMasksMap",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "Map", FloorMasks } --Original "TEXTURES/PLANETS/BIOMES/COMMON/BUILDINGS/SHARED/COMMON/COMMONTILLEDSSR.MASKS.DDS" 
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","gNormalMap",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "Map", FloorNormal } --Original "TEXTURES/PLANETS/BIOMES/COMMON/BUILDINGS/SHARED/COMMON/COMMONTILLEDSSR.NORMAL.DDS"
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
				},
				{
					["MBIN_FILE_SOURCE"] 	=	
					{
					"MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/CENTRESUPPORT/METALHORZ_MAT2.MATERIAL.MBIN",
					"MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/CENTRESUPPORT/METALHORZ_MAT3.MATERIAL.MBIN",
					"MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGAR/METALHORZ_MAT3.MATERIAL.MBIN",
					"MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGARINTERIOR/METALHORZ_MAT1.MATERIAL.MBIN",
					"MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGARINTERIOR_ABAND/METALHORZ_MAT3.MATERIAL.MBIN",
					"MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGARLAYOUT/METALHORZ_MAT1.MATERIAL.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name","gDiffuseMap",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "Map", MetalDiffuse } --Original "TEXTURES/SPACE/SPACESTATION/INTERIOR/METALHORIZONTALPATTERN.DDS" 
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","gMasksMap",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "Map", MetalMasks } --Original "TEXTURES/SPACE/SPACESTATION/INTERIOR/METALHORIZONTALPATTERN.MASKS.DDS" 
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","gNormalMap",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "Map", MetalNormal } --Original "TEXTURES/SPACE/SPACESTATION/INTERIOR/METALHORIZONTALPATTERN.NORMAL.DDS"
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
				},
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
					"MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGARINTERIOR/DECAL_MAT.MATERIAL.MBIN",
					"MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGARLAYOUT/DECAL_MAT.MATERIAL.MBIN",
					"MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGARLAYOUT_ABAND/DECAL_MAT.MATERIAL.MBIN",
					},	
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name","gDiffuseMap",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "Map", hFArrow } --Original "TEXTURES/COMMON/SPACECRAFT/INDUSTRIAL/SHARED/PATHDIRECTION_DECALS.1.DDS" 
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
				},
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
					"MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGARINTERIOR/LETTERDECAL1.MATERIAL.MBIN",
					"MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGARLAYOUT/LETTERDECAL1.MATERIAL.MBIN",
					"MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGARLAYOUT_ABAND/LETTERDECAL1.MATERIAL.MBIN",
					},	
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name","gDiffuseMap",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "Map", hFArrow2 } --Original "TEXTURES/COMMON/SPACECRAFT/INDUSTRIAL/SHARED/PATHDIRECTION_DECALS.2.DDS" 
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
				},
				{
					["MBIN_FILE_SOURCE"] 	= 	"MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGAR/WINDOWLIGHT_MAT1.MATERIAL.MBIN",
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name","gDiffuseMap",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "Map", TilingLight } --Original "TEXTURES/COMMON/SPACECRAFT/INDUSTRIAL/SHARED/PATHDIRECTION_DECALS.2.DDS" 
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
				},
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
					"MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGAR/LAMBERT1.MATERIAL.MBIN",
					"MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGAR/FREIGHTERPROC_MAT15.MATERIAL.MBIN",
					"MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGAR/FREIGHTERPROCPOM_MAT2.MATERIAL.MBIN",
					"MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGARINTERIOR/FREIGHTERPROC_MAT.MATERIAL.MBIN",
					"MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGARINTERIOR_ABAND/FREIGHTERPROC_MAT11.MATERIAL.MBIN",
					"MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGARLAYOUT/FREIGHTERPROC_MAT14.MATERIAL.MBIN",
					"MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGARBASEROOM/INTERIORFREIGHTERBASE_MAT18.MATERIAL.MBIN",	
					"MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGARBASEROOM/PHONG154.MATERIAL.MBIN",		
					"MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGARINTERIOR/LAMBERT1.MATERIAL.MBIN",
					"MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGARINTERIOR/DUALFREIGHTERBASEMAT1.MATERIAL.MBIN",
					"MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGARINTERIOR_ABAND/LAMBERT1.MATERIAL.MBIN",
					"MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGARLAYOUT/LAMBERT1.MATERIAL.MBIN",
					"MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGARLAYOUT/DUALFREIGHTERBASESSRMAT.MATERIAL.MBIN",
					"MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGARLAYOUT_ABAND/LAMBERT1.MATERIAL.MBIN",
					"MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGARPROPS/FUELPOD//DUALFREIGHTERBASEMAT.MATERIAL.MBIN",
					"MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGARPROPS/HANGARFLOORSECTIONA//DUALFREIGHTERBASEMAT.MATERIAL.MBIN",
					"MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGARPROPS/HANGARFLOORSECTIONA//HQTRIMMETAL_MAT10.MATERIAL.MBIN",
					"MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/TELEPORTER/TELEPORTER_HANGAR/LAMBERT1.MATERIAL.MBIN",
					"MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/TELEPORTER/TELEPORTER_HANGAR/DUALFREIGHTERBASEMAT17.MATERIAL.MBIN",
					},	
					["EXML_CHANGE_TABLE"] 	= 
					{
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