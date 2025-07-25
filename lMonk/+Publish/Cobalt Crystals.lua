-------------------------------------------------------------------
local mod_desc = [[
  Change green crystal reward to ionised cobalt
  Slightly increase green crystals spawn probability in cave biome
]]-----------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '_MOD.lMonk.Cobalt Crystals.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '5.72',
	MOD_DESCRIPTION		= mod_desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/CAVEFULL.MBIN',
		MXML_CHANGE_TABLE	= {
			{
				FOREACH_SKW_GROUP 	= {
					{'Filename', 'MODELS/PLANETS/BIOMES/COMMON/CRYSTALS/LARGE/CRYSTAL_LARGE_CAVE.SCENE.MBIN'},
					{'Filename', 'MODELS/PLANETS/BIOMES/COMMON/CRYSTALS/MEDIUM/CRYSTAL_MEDIUM_CAVE.SCENE.MBIN'}
				},
				SECTION_UP			= 1,
				VALUE_CHANGE_TABLE 	= {
					{'Placement',	'CRYSTAL2'}
				}
			},
			{
				FOREACH_SKW_GROUP 	= {
					{'Filename', 'MODELS/PLANETS/BIOMES/COMMON/CRYSTALS/SMALL/CRYSTAL_SMALL_CAVE.SCENE.MBIN'},
					{'Filename', 'MODELS/PLANETS/BIOMES/COMMON/CRYSTALS/SMALL/CRYSTAL_FRAGMENT_CAVE.SCENE.MBIN'}
				},
				SECTION_UP			= 1,
				VALUE_CHANGE_TABLE 	= {
					{'Placement',	'CRYSTALCAVE'}
				}
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= {
			'MODELS/PLANETS/BIOMES/COMMON/CRYSTALS/LARGE/CRYSTAL_LARGE_CAVE/ENTITIES/CRYSTAL_LARGE_CAVE.ENTITY.MBIN',
			'MODELS/PLANETS/BIOMES/COMMON/CRYSTALS/MEDIUM/CRYSTAL_MEDIUM_CAVE/ENTITIES/CRYSTAL_MEDIUM_CAVE.ENTITY.MBIN',
			'MODELS/PLANETS/BIOMES/COMMON/CRYSTALS/SMALL/CRYSTAL_SMALL_CAVE/ENTITIES/CYSTAL_SMALL_CAVE.ENTITY.MBIN',
			'MODELS/PLANETS/BIOMES/COMMON/CRYSTALS/SMALL/CRYSTAL_FRAGMENT_CAVE/ENTITIES/SHARDS_CAVE.ENTITY.MBIN',
		},
		MXML_CHANGE_TABLE	= {
			{
				VALUE_CHANGE_TABLE 	= {
					{'GivesReward',	'PLANT_TECH'},
					{'ScanName',	'UI_CAVE2_NAME_L'}, -- UI_GREEN_CRYSTAL_NAME ?
					{'ScanIconType','CaveSubstance'}
				}
			}
		}
	}
}}}}