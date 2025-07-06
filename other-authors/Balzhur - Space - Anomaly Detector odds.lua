ModAuthor	= "Balzhur"
LuaAuthor	= "Balzhur"
Maintainer	= "Babscoole"
ModName		= "Anomaly Detector odds"
ModCategory	= "Space"
ModDescription	= "Increased chance of getting Anomaly Detector from asteroids"
GameVersion	= "5.50"
ModVersion	= "1.3"
-- Next option works only with AMUMSS v4.0.0.5+
ChanceMult	= GUIF( {2,[[Multiplier (default: 2)]]},5 )	-- x times more often to find Anomaly detector

NMS_MOD_DEFINITION_CONTAINER = {
	["MOD_FILENAME"]	= ModAuthor.." - "..ModCategory.." - "..ModName.." ("..ChanceMult.."x)-"..ModVersion..".pak",
	["MOD_DESCRIPTION"]	= ModDescription.." v"..ModVersion,
	["MOD_MAINTENANCE"]	= Maintainer,
	["MOD_AUTHOR"]		= ModAuthor,
	["LUA_AUTHOR"]		= LuaAuthor,
	["NMS_VERSION"]		= GameVersion,
	["MODIFICATIONS"]	= {{
		["MBIN_CHANGE_TABLE"] = {{
			["MBIN_FILE_SOURCE"] 	= "GCSOLARGENERATIONGLOBALS.GLOBAL.MBIN",
			["EXML_CHANGE_TABLE"] 	= {{
				["MATH_OPERATION"]	= "*",
				["VALUE_CHANGE_TABLE"]	= {
					{"Rare Asteroid Data Product Odds", ChanceMult}, 	-- Original "0.005". Multiplies original value by user defined amount.
				}
			}}
		}}
	}}
}
-- The END of mod definition container