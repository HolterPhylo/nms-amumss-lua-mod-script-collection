------------------------------------------------------------
local mod_desc = [[
  Make huge tree and rock spawns active like all others.
]]----------------------------------------------------------

local entity = {
	plant_big	= 'MODELS/PLANETS/BIOMES/COMMON/PLANTS/LARGEPLANT/ENTITIES/LARGEPLANT.ENTITY.MBIN',
	plant_huge	= 'MODELS/PLANETS/BIOMES/COMMON/SHARED/ENTITIES/HUGEPLANT.ENTITY.MBIN',
	rock_big	= 'MODELS/PLANETS/BIOMES/COMMON/ROCKS/LARGE/LARGEROCK/ENTITIES/LARGEROCK.ENTITY.MBIN',
	rock_huge	= 'MODELS/PLANETS/BIOMES/COMMON/SHARED/ENTITIES/HUGEROCK.ENTITY.MBIN'
}

local source_mbins = {
	{
		mbin = {
			'MODELS/PLANETS/BIOMES/HUGEPROPS/HUGERING/HUGEROCKRING.SCENE.MBIN',
			'MODELS/PLANETS/BIOMES/HUGEPROPS/HUGEROCK/HUGEPLATFORMROCK.SCENE.MBIN'
		},
		cat  = entity.rock_huge,
		node = { '_base_1LOD0' }
	},
	{
		mbin = {'MODELS/PLANETS/BIOMES/HUGEPROPS/HUGEROCK/HUGESPIKEROCK.SCENE.MBIN'},
		cat  = entity.rock_huge,
		node = {
			'_base_1LOD0',
			'_base_2LOD0',
			'_base_3LOD0',
			'_base_5LOD0',
			'_base_6LOD0'
		}
	},
	{
		mbin = {
			'MODELS/PLANETS/BIOMES/HUGEPROPS/HUGESCORCHED/PARTS/HUGESPIRE01.SCENE.MBIN',
			'MODELS/PLANETS/BIOMES/HUGEPROPS/HUGESCORCHED/PARTS/HUGESPIRE02.SCENE.MBIN',
			'MODELS/PLANETS/BIOMES/HUGEPROPS/HUGESCORCHED/PARTS/HUGESPIRE03.SCENE.MBIN'
		},
		cat  = entity.plant_huge,
		node = { '_TRUNK_01' }
	},
	{
		mbin = {'MODELS/PLANETS/BIOMES/HUGEPROPS/HUGETOXIC/PARTS/FUNGALTREE01.SCENE.MBIN'},
		cat  = entity.plant_huge,
		node = { '_FUNG_A' }
	},
	{
		mbin = {
			'MODELS/PLANETS/BIOMES/HUGEPROPS/HUGETOXIC/PARTS/HUGETENDRIL01.SCENE.MBIN',
			'MODELS/PLANETS/BIOMES/HUGEPROPS/HUGETOXIC/PARTS/HUGETENDRIL02.SCENE.MBIN'
		},
		cat  = entity.plant_huge,
		node = { '_BIGTend_01' }
	},
	{
		mbin = {'MODELS/PLANETS/BIOMES/HUGEPROPS/HUGEUW/HUGESTRANDS.SCENE.MBIN'},
		cat  = entity.plant_huge,
		node = {
			'_Strands_1LOD0',
			'_Strands_2LOD0',
			'_Strands_3LOD0',
			'_Strands_4LOD0',
			'_Strands_5LOD0',
			'_Strands_7LOD0',
			'_Strands_8LOD0'
		}
	},
	{
		mbin = {'MODELS/PLANETS/BIOMES/HUGEPROPS/HUGEUW/HUGESWIRLPLANT.SCENE.MBIN'},
		cat  = entity.plant_huge,
		node = {
			'_base_1LOD0',
			'_base_2LOD0',
			'_base_3LOD0'
		}
	},
	{
		mbin = {'MODELS/PLANETS/BIOMES/WEIRD/BONESPIRE/BONESPINE.SCENE.MBIN'},
		cat  = entity.plant_huge,
		node = { 'BoneSpine' }
	},
	{
		mbin = {'MODELS/PLANETS/BIOMES/WEIRD/CONTOUR/CONTOURTOWER.SCENE.MBIN'},
		cat  = entity.plant_huge,
		node = { 'Tower' }
	},
	{
		mbin = {'MODELS/PLANETS/BIOMES/UNDERWATER/UPDATEPROPS/UNDERWATERCONTOURPOD.SCENE.MBIN'},
		cat  = entity.plant_huge,
		node = { 'Pod_LOD0' }
	}
}

local mbin_ct = {
	{
		MBIN_FILE_SOURCE	= {
			{
				entity.plant_big,
				entity.plant_huge,
				'REMOVE'
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= entity.plant_huge,
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Components', 'GcDestructableComponentData'},
				VALUE_CHANGE_TABLE 	= {
					{'GivesReward',			'DE_PLANT_LARGE'},
					{'DestroyForce',		2},
					{'DestroyForceRadius',	5},
					{'DestroyEffectTime',	4},
					{'GrenadeSingleHit',	false}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Components', 'GcShootableComponentData'},
				VALUE_CHANGE_TABLE 	= {
					{'Health',		20000},
				}
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= {
			{--	overwrites existing mangrove entity
				entity.plant_huge,
				'MODELS/PLANETS/BIOMES/SWAMP/LARGEPLANT/MANGROVELARGE/ENTITIES/MANGROVELARGE.ENTITY.MBIN'
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= {
			{
				entity.rock_big,
				entity.rock_huge,
				'REMOVE'
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= entity.rock_huge,
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Components', 'GcDestructableComponentData'},
				VALUE_CHANGE_TABLE 	= {
					{'GivesReward',			'DE_ROCK_LARGE'},
					{'DestroyForce',		2},
					{'DestroyForceRadius',	5},
					{'DestroyEffectTime',	4},
					{'GrenadeSingleHit',	false}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Components', 'GcShootableComponentData'},
				VALUE_CHANGE_TABLE 	= {
					{'Health',		24000},
					{'RequiredTech',''},
				}
			}
		}
	}
}
for _,src in ipairs(source_mbins) do
	local ect = {}
	for _,node in ipairs(src.node) do
		ect[#ect+1] = {
			SPECIAL_KEY_WORDS	= {'Name', node},
			PRECEDING_KEY_WORDS = 'Attributes',
			ADD 				= [[
				<Property name="Attributes" value="TkSceneNodeAttributeData">
					<Property name="Name" value="ATTACHMENT"/>
					<Property name="Value" value="]]..src.cat..[["/>
				</Property>]]
		}
	end
	mbin_ct[#mbin_ct+1] = {
		MBIN_FILE_SOURCE	= src.mbin,
		EXML_CHANGE_TABLE	= ect
	}
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '_MOD.lMonk.Huge Props Activated.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '5.52',
	MOD_DESCRIPTION		= mod_desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= mbin_ct
}}}