-------------------------------------------------------------------------------
---	LUA 2 EXML (VERSION: 0.83.2) ... by lMonk
---	A tool for converting exml to an equivalent lua table and back again.
---	Helper functions for color class, vector class and string arrays
---	* This script should be in [AMUMSS folder]\ModScript\ModHelperScripts\LIB
-------------------------------------------------------------------------------

--	replace a boolean with its text equivalent (ignore otherwise)
--	@param b: any value
function bool(b)
	return (type(b) == 'boolean') and ((b == true) and 'True' or 'False') or b
end

--	get the count of ALL objects in a table (non-recursive)
--	@param t: any table
function len2(t)
	i=0; for _ in pairs(t) do i=i+1 end; return i
end

--	Generate an EXML-tagged text from a lua table representation of exml class
--	@param class: a lua2exml formatted table
function ToExml(class)
	local function exml_r(tlua)
		local exml = {}
		function exml:add(t)
			for _,v in ipairs(t) do self[#self+1] = v end
		end
		for key, cls in pairs(tlua) do
			if key ~= 'META' then
				exml[#exml+1] = '<Property '
				if type(cls) == 'table' and cls.META then
					local att, val = cls['META'][1], cls['META'][2]
					-- add and recurs for an inner table
					if att == 'name' or att == 'value' then
						exml:add({att, '="', val, '">'})
					else
						exml:add({'name="', att, '" value="', val, '">'})
					end
					exml:add({exml_r(cls), '</Property>'})
				else
					-- add normal property
					if type(cls) == 'table' then
						key, cls = next(cls)
					end
					if key == 'name' or key == 'value' then
						exml:add({key, '="', bool(cls), '"/>'})
					else
						exml:add({'name="', key, '" value="', bool(cls), '"/>'})
					end
				end
			end
		end
		return table.concat(exml)
	end
	-------------------------------------------------------------------------
	-- check the table level structure and meta placement
	-- add the needed layer for the recursion and handle multiple tables
	local klen = len2(class)
	if klen == 1 and class[1].META then
		return exml_r(class)
	elseif class.META and klen > 1 then
		return exml_r( {class} )
	-- concatenate unrelated exml sections, instead of nested inside each other
	elseif type(class[1]) == 'table' and klen > 1 then
		local T = {}
		for _, tb in pairs(class) do
			T[#T+1] = exml_r((tb.META and klen > 1) and {tb} or tb)
		end
		return table.concat(T)
	end
end

--	Adds the xml header and data template
--	Uses the contained template META if found (instead of the received variable)
--	@param data: a lua2exml formatted table
--	@param template: an nms file template string
function FileWrapping(data, template)
	local wrapper = '<Data template="%s">%s</Data>'
	if type(data) == 'string' then
		return string.format(wrapper, template, data)
	end
	-- remove the extra table added by ToLua
	if data.template then data = data.template end
	-- table loaded from file
	if data.META[1] == 'template' then
		-- strip mock template
		local txt_data = ToExml(data):sub(#data.META[2] + 36, -12)
		return string.format(wrapper, data.META[2], txt_data)
	else
		return string.format(wrapper, template, ToExml(data))
	end
end

--	Build a TkSceneNodeData class
--	@param props: a keyed table for scene class properties.
--	{
--	  name	= scene node name (NameHash is calculated automatically)
--	  stype	= scene node type
--	  form	= [optional] Transform data. a list of 9 ordered values or keyed values,
--			  but NOT a combination of the two!
--	  attr	= [optional] Attributes table of {name, value} pairs
--	  child	= [optional] Children table for ScNode tables
--	}
function ScNode(props)
	--	Builds a TkTransformData class
	local function scTransform(T)
		T = T or {}
		return {
			META	= {'Transform', 'TkTransformData.xml'},
			TransX	= (T.tx or T[1]) or 0,
			TransY	= (T.ty or T[2]) or 0,
			TransZ	= (T.tz or T[3]) or 0,
			RotX	= (T.rx or T[4]) or 0,
			RotY	= (T.ry or T[5]) or 0,
			RotZ	= (T.rz or T[6]) or 0,
			ScaleX	= (T.sx or T[7]) or 1,
			ScaleY	= (T.sy or T[8]) or 1,
			ScaleZ	= (T.sz or T[9]) or 1
		}
	end
	--	Builds a scene node attributes array
	local function scAttributes(T)
		local atr = {META = {'name', 'Attributes'}}
		for _,at in ipairs(T) do
			atr[#atr+1] = {
				META	= {'value', 'TkSceneNodeAttributeData.xml'},
				Name	= at[1],
				Value	= at[2]
			}
		end
		return atr
	end
	--	returns a jenkins hash from a string (by lyravega)
	local function jenkinsHash(input)
		local hash = 0
		local t_chars = {string.byte(input:upper(), 1, #input)}

		for i = 1, #input do
			hash = (hash + t_chars[i]) & 0xffffffff
			hash = (hash + (hash << 10)) & 0xffffffff
			hash = (hash ~ (hash >> 6)) & 0xffffffff
		end
		hash = (hash + (hash << 3)) & 0xffffffff
		hash = (hash ~ (hash >> 11)) & 0xffffffff
		hash = (hash + (hash << 15)) & 0xffffffff
		return tostring(hash)
	end
	-----------------------------------------------------------------
	local T	= {
		META	= {'value', 'TkSceneNodeData.xml'},
		Name 		= props.name,
		NameHash	= jenkinsHash(props.name),
		Type		= props.stype
	}
	T[#T+1]		= scTransform(props.form or {})
	if props.attr then
		T[#T+1] = scAttributes(props.attr)
	end
	if props.child then
		local tc = { META = {'name', 'Children'} }
		for _,pc in ipairs(props.child) do tc[#tc+1] = pc end
		T[#T+1]	= tc
	end
	return T
end
----------------------------------------------------------------------
local mod_desc = [[
  procedurally-placed keys - Only 3 keys will appear in any instance
  4 Alternate placements for the treasure chest
]]--------------------------------------------------------------------

local keys = {
	tid	 = '_CRATES_KEY_',
	name = '_Cratekey_',
	form = {
		{-26.1,		-7.45,		-3.5,		21.0,		31.0,		1.0},		-- below side walk
		{47.79934,	-10.29004,	8.20181,	30.20214,	28.048,		-16.6737},	-- bottom of slant
		{35.64062,	-3.38012,	21.2812,	-2.890653,	23.66665,	6.40387},	-- in tower
		{4.6,		-7.85,		30.0,		-18,		-160,		4.0},		-- mid center & tower
		{-1.9188,	-19.8312,	-51.76936,	9.22353,	184.20784,	-1.3652},	-- stairs bottom
		{-0.9938,	-6.0703,	-38.33277,	-4.67097,	9.22354,	-1.3652},	-- stairs top
	}
}

local locks = {
	tid	 = '_CRATES_LOCK_',
	name = '_Cratelock_',
	form = {
		{-0.91945,	-8.16323,	0.4867,		1.69392,	2.41958,	4.91478},				-- original center
		{-0.91945,	-12.19,		-31.1867,	1.7,		-175,		-1.2},					-- behind stairs
		{33.4,		0.55,		23.2,		2.0,		-35,		3.5,	0.8, 0.8, 0.8},	-- on tower
		{-25.6,		-5.84,		-17.1,		8.0,		-177,		5.0},					-- end of side walk
	}
}

local function AddChar(n, i, u)
	local s = n..string.char(64 + i)
	return u and s:upper() or s
end

local function AddSceneNodes()
	local T = {}
	for i, f in ipairs(keys.form) do
		T[#T+1] = ScNode({
			name	= AddChar(keys.name, i),
			stype	= 'REFERENCE',
			form	= f,
			attr	= {
				{'SCENEGRAPH', 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/RUINS/PARTS/CRATEKEY.SCENE.MBIN'}
			}
		})
	end
	for i, f in ipairs(locks.form) do
		T[#T+1] = ScNode({
			name	= AddChar(locks.name, i),
			stype	= 'REFERENCE',
			form	= f,
			attr	= {
				{'SCENEGRAPH', 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/RUINS/PARTS/CRATELOCK.SCENE.MBIN'}
			}
		})
	end
	return T
end

local function GenerateDescriptor()
	local function Rsrc3Group(name, ix, cmb)
		return {
			META	= {'value','TkResourceDescriptorData.xml'},
			Id		= AddChar(name, cmb[1], true),
			Name	= AddChar(name, cmb[1]),
			Children= {
				META = {'name','Children'},
				{
					META = {'value','TkModelDescriptorList.xml'},
					List = {
						META = {'name','List'},
						{
							META	= {'value','TkResourceDescriptorList.xml'},
							TypeId	= AddChar(name..'ID2_', ix, true),
							Descriptors = {
								META = {'name','Descriptors'},
								{
									META	= {'value','TkResourceDescriptorData.xml'},
									Id		= AddChar(name, cmb[2], true),
									Name	= AddChar(name, cmb[2]),
									Children= {
										META = {'name','Children'},
										{
											META = {'value','TkModelDescriptorList.xml'},
											List = {
												META = {'name','List'},
												{
													META	= {'value','TkResourceDescriptorList.xml'},
													TypeId	= AddChar(name..'ID3_', ix, true),
													Descriptors = {
														META = {'name','Descriptors'},
														{
															META	= {'value','TkResourceDescriptorData.xml'},
															Id		= AddChar(name, cmb[3], true),
															Name	= AddChar(name, cmb[3])
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
				}
			}
		}
	end
	local function RsrcList(tid)
		return {
			META		= {'value', 'TkResourceDescriptorList.xml'},
			TypeId		= tid,
			Descriptors	= {META = {'name', 'Descriptors'}}
		}
	end
	local combinations = {}
	--	generate combinations for 6 crate-keys
	for i=1, 4 do
		for j=i+1, 5 do
			for k=j+1, 6 do
				combinations[#combinations+1] = {i, j, k}
			end
		end
	end
	local T = {
		--	file wrapper template
		META = {'template', 'TkModelDescriptorList'},
		List = {
			META = {'name', 'List'},
			[1]  = RsrcList(keys.tid)
		}
	}
	-- Add key crates
	for i, k in ipairs(combinations) do
		table.insert(T.List[1].Descriptors, Rsrc3Group(keys.name, i, k))
	end
	-- Add lock crates
	T.List[#T.List+1] = RsrcList(locks.tid)
	for i=1, #locks do
		table.insert(T.List[2].Descriptors, {
			META	= {'value', 'TkResourceDescriptorData.xml'},
			Id		= AddChar(locks.name, i, true),
			Name	= AddChar(locks.name, i)
		})
	end
	return T
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '_MOD.lMonk.Treasure Ruin Procedural Crates.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '4.65',
	MOD_DESCRIPTION		= mod_desc,
	AMUMSS_SUPPRESS_MSG	= 'MULTIPLE_STATEMENTS,MIXED_TABLE',
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/RUINS/UNDERGROUNDRUINS.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				FOREACH_SKW_GROUP 	= {
					{'Name', 'RefCrateKey'},
					{'Name', 'RefCrateKey1'},
					{'Name', 'RefCrateKey2'},
					{'Name', 'RefCrateKey3'},
					{'Name', 'RefCrateKey7'},
					{'Name', 'RefCrateKey8'},
					{'Name', 'RefCrateLock'}
				},
				REMOVE				= 'Section'
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'Layout_1'},
				PRECEDING_KEY_WORDS = 'Children',
				ADD 				= ToExml(AddSceneNodes())
			}
		}
	}
}}},
	ADD_FILES	= {
		{
			FILE_DESTINATION = 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/RUINS/UNDERGROUNDRUINS.DESCRIPTOR.EXML',
			FILE_CONTENT	 = FileWrapping(GenerateDescriptor())
		}
	}
}