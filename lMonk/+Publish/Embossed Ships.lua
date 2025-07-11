---------------------------------------------------------------------------------------------------
local mod_desc = [[
  - Add embossed texture options to fighter, dropship, sailship and scientific fabrication menu

  * ADD_FILES will skipped SILENTLY if new files are not found!
]]-------------------------------------------------------------------------------------------------

-- 	ship fabricator texture additions
--	names and palette selection ships texture groups
local new_ship_texture = {
	{
		name	= 'SHINY',
		sci		= true,		-- shared with scientific
		org		= true,		-- existing original
		palette	= {			-- shared with -and changed by the following
			PRIMARY		= {'Metal', 'Primary'},
			SECONDARY	= {'Paint', 'Alternative1'},
			TERTIARY	= {'Paint', 'Primary'},
		}
	},
	{
		name	= 'DEFAULT',
		sci		= true,
		org		= true,
		palette	= {
			PRIMARY		= {'Undercoat', 'Primary'},
		}
	},
	{
		name	= 'TOPOMAP',
		metal	= true,
		sci		= true,
		palette	= {
			PRIMARY		= {'Paint', 'Primary'},
			TERTIARY	= {'Undercoat', 'Primary'},
		}
	},
	{
		name	= 'PAINTSWIRL',
		metal	= false,
		sci		= true
	},
	{
		name	= 'MEZO',
		metal	= false,
		sci		= true
	},
	{
		name	= 'MAYA_SNAKE',
		metal	= true,
		sci		= true
	},
	{
		name	= 'MAYA_WALL',
		metal	= true,
		sci		= true
	},
	{
		name	= 'AZTEC_DRAGON',
		metal	= false,
		sci		= true
	},
	{
		name	= 'AZTEC_FACE',
		metal	= false,
		sci		= true
	},
	{
		name	= 'CELTIC',
		metal	= true,
		sci		= true
	},
	{
		name	= 'POLYNESIA',
		metal	= false,
		sci		= true
	},
	{
		name	= 'POLYNESIA_SEA',
		metal	= true,
		sci		= true
	},
	{
		name	= 'MAORI_FACE',
		metal	= false,
		sci		= true
	},
	{
		name	= 'EASTERN',
		metal	= false,
		sci		= true
	},
	{
		name	= 'WOVEN',
		metal	= true,
		sci		= true
	},
	{
		name	= 'WOVEN2',
		metal	= true,
		sci		= true
	},
	{
		name	= 'DEMON',
		metal	= false,
		sci		= true
	},
	{
		name	= 'TARGET',
		metal	= false,
		sci		= true
	},
	{
		name	= 'SKULLS',
		metal	= true,
		sci		= true
	},
	{
		name	= 'THE_HARING',
		metal	= true,
		sci		= true
	}
}
---------------------------------------------------------------------------------------------------
local module_ct = {}
for _,ship in ipairs({'Fighter', 'Dropship', 'Sail'}) do
	-- ship :: copy GcModularCustomisationColourData
	module_ct[#module_ct+1] = {
		SPECIAL_KEY_WORDS	= {ship, 'GcModularCustomisationConfig', 'RequiredTextureOption', 'PANELS'},
		SEC_SAVE_TO			= 'customisation_colour_data',
	}
	-- ship :: insert new texture options
	for _,snk in ipairs(new_ship_texture) do
		if not snk.org then
			module_ct[#module_ct+1] = {
				SEC_EDIT 			= 'customisation_colour_data',
				VALUE_CHANGE_TABLE 	= {
					{'RequiredTextureOption',	snk.name},
					{'PaletteID',				snk.metal and 'SHIP_METALLIC' or 'SHIP'},
				}
			}
			module_ct[#module_ct+1] = {
				SPECIAL_KEY_WORDS	= {ship, 'GcModularCustomisationConfig'},
				PRECEDING_KEY_WORDS = 'ColourDataPriorityList',
				ADD_OPTION			= 'AddEndSection',
				SEC_ADD_NAMED		= 'customisation_colour_data'
			}
		end
	end
end
-- Sailship :: copy GcModularCustomisationColourData
module_ct[#module_ct+1] = {
	SPECIAL_KEY_WORDS	= {'Sail', 'GcModularCustomisationConfig', 'RequiredTextureOption', 'PANELS'},
	SEC_SAVE_TO			= 'customisation_colour_data',
}
-- Sailship :: insert new texture options
for _,snk in ipairs(new_ship_texture) do
	if not snk.org then
		module_ct[#module_ct+1] = {
			SEC_EDIT 			= 'customisation_colour_data',
			VALUE_CHANGE_TABLE 	= {
				{'RequiredTextureOption',	snk.name},
				{'PaletteID',				snk.metal and 'SHIP_METALLIC' or 'SHIP'},
			}
		}
		module_ct[#module_ct+1] = {
			SPECIAL_KEY_WORDS	= {'Sail', 'GcModularCustomisationConfig'},
			PRECEDING_KEY_WORDS = 'ColourDataPriorityList',
			ADD_OPTION			= 'AddEndSection',
			SEC_ADD_NAMED		= 'customisation_colour_data'
		}
	end
end
-- Scientific :: ready and insert new options
module_ct[#module_ct+1] = {
	REPLACE_TYPE 		= 'All',
	SPECIAL_KEY_WORDS	= {
		'Scientific', 'GcModularCustomisationConfig',
		'ColourDataPriorityList', 'GcModularCustomisationColourData'
	},
	REMOVE				= 'Section'
}
module_ct[#module_ct+1] = {
	SEC_EDIT 			= 'customisation_colour_data',
	VALUE_CHANGE_TABLE 	= {
		{'RequiredTextureGroup',	'SHIP_SCI'}
	}
}
for _,snk in ipairs(new_ship_texture) do
	if snk.sci then
		module_ct[#module_ct+1] = {
			SEC_EDIT 			= 'customisation_colour_data',
			VALUE_CHANGE_TABLE 	= {
				{'RequiredTextureOption',	snk.name},
				{'PaletteID',				snk.metal and 'SHIP_METALLIC' or 'SHIP'},
			}
		}
		for col, pal in pairs(snk.palette or {}) do
			module_ct[#module_ct+1] = {
				SEC_EDIT 			= 'customisation_colour_data',
				SPECIAL_KEY_WORDS	= {'Title', 'CUSTOMISE_'..col},
				VALUE_CHANGE_TABLE 	= {
					  {'Palette',	pal[1]},
					  {'ColourAlt',	pal[2]},
				}
			}
		end
		module_ct[#module_ct+1] = {
			SPECIAL_KEY_WORDS	= {'Scientific', 'GcModularCustomisationConfig'},
			PRECEDING_KEY_WORDS = 'ColourDataPriorityList',
			ADD_OPTION			= 'AddEndSection',
			SEC_ADD_NAMED		= 'customisation_colour_data'
		}
	end
end

---------------------------------------------------------------------------------------------------
local char_ct = {}
local str_prp = '<Property name="%s" value="%s"/>'
-- ship :: copy multilayer
char_ct[#char_ct+1] = {
	SPECIAL_KEY_WORDS	= {'TextureOptionsID', 'COATING'},
	SEC_SAVE_TO			= 'multi_texture_option',
}
-- ship :: insert new multilayers
for _,snk in ipairs(new_ship_texture) do
	if not snk.org then
		char_ct[#char_ct+1] = {
			SEC_EDIT 			= 'multi_texture_option',
			VALUE_CHANGE_TABLE 	= {
				{'TextureOptionsID',	snk.name},
				{'Option',				snk.name}
			}
		}
		char_ct[#char_ct+1] = {
			SPECIAL_KEY_WORDS	= {
				{'MultiTextureOptionsID', 'SHIP_FIGHT'},
				{'MultiTextureOptionsID', 'SHIP_SAIL'},
			},
			PRECEDING_KEY_WORDS = 'Options',
			ADD_OPTION			= 'AddEndSection',
			SEC_ADD_NAMED		= 'multi_texture_option'
		}
		char_ct[#char_ct+1] = {
			SPECIAL_KEY_WORDS	= {
				{'MultiTextureOptionsID', 'SHIP_FIGHT'},
				{'MultiTextureOptionsID', 'SHIP_SAIL'},
			},
			PRECEDING_KEY_WORDS = 'Tips',
			ADD_OPTION			= 'AddEndSection',
			ADD					= str_prp:format('Tips', snk.name)
		}
		-- scientific :: add options and tips
		if snk.sci then
			char_ct[#char_ct+1] = {
				SPECIAL_KEY_WORDS	= {'TextureOptionsID', 'SHIP_SCI'},
				PRECEDING_KEY_WORDS = 'Options',
				ADD_OPTION			= 'AddEndSection',
				ADD					= str_prp:format('Options', snk.name)
			}
			char_ct[#char_ct+1] = {
				SPECIAL_KEY_WORDS	= {'TextureOptionsID', 'SHIP_SCI'},
				PRECEDING_KEY_WORDS = 'Tips',
				ADD_OPTION			= 'AddEndSection',
				ADD					= str_prp:format('Tips', snk.name)
			}
		end
	end
end
--- fighter proc texture --------------------------------------------------------------------------
local ship_path = 'TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/'
local ship_ct = {}
for _,src in ipairs({
	'HQTRIM_PRIMARY',
	'HQTRIM_SECONDARY',
	'PRIMARY',
	'SECONDARY',
	'TERTIARY'
}) do
	local T = {{
		SPECIAL_KEY_WORDS	= {'Name', 'PAINTED'},
		SEC_SAVE_TO			= 'procedural_texture',
	}}
	for _,snk in ipairs(new_ship_texture) do
		if not snk.org then
			T[#T+1] = {
				SEC_EDIT 			= 'procedural_texture',
				VALUE_CHANGE_TABLE 	= {
					{'Name',		snk.name},
					{'Probability',	0.005}
				}
			}
			T[#T+1] = {
				SEC_EDIT 			= 'procedural_texture',
				VALUE_CHANGE_TABLE 	= {
					{'TextureName',	ship_path..'PRIMARY.'..snk.name..'.DDS'}
				}
			}
			T[#T+1] = {
				SEC_EDIT 			= 'procedural_texture',
				PRECEDING_KEY_WORDS = 'Palette',
				REPLACE_TYPE 		= 'OnceInside',
				VALUE_CHANGE_TABLE 	= {
					{'Palette', (src:match('^PRIM') or src:match('^TERT')) and 'Paint' or  'Undercoat'}
				}
			}
			T[#T+1] = {
				SPECIAL_KEY_WORDS	= {'Name', 'BASE'},
				PRECEDING_KEY_WORDS = 'Textures',
				ADD_OPTION			= 'AddEndSection',
				SEC_ADD_NAMED		= 'procedural_texture'
			}
		end
	end
	ship_ct[#ship_ct+1] = {
		MBIN_FILE_SOURCE	= ship_path..src..'.TEXTURE.MBIN',
		MXML_CHANGE_TABLE	= T
	}
end
--- scientific proc texture -----------------------------------------------------------------------
local sci_path = 'TEXTURES/COMMON/SPACECRAFT/SCIENTIFIC/SHARED/'
local sci_ct = {
	{
		SPECIAL_KEY_WORDS	= {'Name', 'PAINT1', 'Name', 'PAINTED'},
		SEC_SAVE_TO			= 'procedural_texture_paint',
	},
	{
		SPECIAL_KEY_WORDS	= {'Name', 'BASE', 'Name', 'SHINY'},
		SEC_SAVE_TO			= 'procedural_texture_base',
	}
}
for _,snk in ipairs(new_ship_texture) do
	if snk.sci and not snk.org then
		sci_ct[#sci_ct+1] = {
			SEC_EDIT 			= 'procedural_texture_paint',
			VALUE_CHANGE_TABLE 	=  {
				{'Name',		snk.name},
				{'Probability',	0.005},
				{'TextureName',	sci_path..'SCIENTIFIC.PAINT1.'..snk.name..'.DDS'}
			}
		}
		sci_ct[#sci_ct+1] = {
			SPECIAL_KEY_WORDS	= {'Name', 'PAINT1'},
			PRECEDING_KEY_WORDS = 'Textures',
			ADD_OPTION			= 'AddEndSection',
			SEC_ADD_NAMED		= 'procedural_texture_paint'
		}
		sci_ct[#sci_ct+1] = {
			SEC_EDIT 			= 'procedural_texture_base',
			VALUE_CHANGE_TABLE 	= {
				{'Name',		snk.name},
				{'Probability',	0.005}
			}
		}
		sci_ct[#sci_ct+1] = {
			SPECIAL_KEY_WORDS	= {'Name', 'BASE'},
			PRECEDING_KEY_WORDS = 'Textures',
			ADD_OPTION			= 'AddEndSection',
			SEC_ADD_NAMED		= 'procedural_texture_base'
		}
	end
end
---------------------------------------------------------------------------------------------------
NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 			= '_MOD.lMonk.Embossed Ships.pak',
	MOD_AUTHOR				= 'lMonk',
	NMS_VERSION				= '5.62',
	MOD_DESCRIPTION			= mod_desc,
	MODIFICATIONS 			= {
		{
			MBIN_CHANGE_TABLE	= {
				{
					MBIN_FILE_SOURCE	= 'METADATA/GAMESTATE/PLAYERDATA/MODULARCUSTOMISATIONDATATABLE.MBIN',
					MXML_CHANGE_TABLE	= module_ct
				},
				{
					MBIN_FILE_SOURCE	= 'METADATA/GAMESTATE/PLAYERDATA/CHARACTERCUSTOMISATIONTEXTUREOPTIONDATA.MBIN',
					MXML_CHANGE_TABLE	= char_ct
				},
				{
					MBIN_FILE_SOURCE  	= 'UI/SHIP_BUILDER_PAGE.MBIN',
					MXML_CHANGE_TABLE 	= {
						{
							SPECIAL_KEY_WORDS	= {'ID', 'COLOUR'},
							VALUE_CHANGE_TABLE	= {
								{'Position Y',	44},
								{'Height',		580}
							}
						}
					}
				}
			}
		},
		{
			MBIN_CHANGE_TABLE	= ship_ct
		},
		{
			MBIN_CHANGE_TABLE	= {{
				MBIN_FILE_SOURCE	= sci_path..'SCIENTIFIC.TEXTURE.MBIN',
				MXML_CHANGE_TABLE	= sci_ct
			}}
		}
	},
	ADD_FILES	= (
		function()
			local tex_path = 'D:/MODZ_stuff/NoMansSky/Sources/_Textures_mod_source/textures/common/spacecraft/'
			if lfs.attributes(tex_path) then
				return {
					{
						EXTERNAL_FILE_SOURCE = tex_path..'fighters/shared/PRIMARY*.dds',
						FILE_DESTINATION	 = ship_path
					},
					{
						EXTERNAL_FILE_SOURCE = tex_path..'Scientific/shared/SCIENTIFIC*.dds',
						FILE_DESTINATION	 = sci_path
					}
				}
			end
			return nil
		end
	)()
}
