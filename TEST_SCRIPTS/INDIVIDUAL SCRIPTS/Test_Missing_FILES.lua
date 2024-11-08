Version = "1.0"
Game_Version = ""
Mod_Author = "hemis FEAR/Wbertro"
Lua_Author = "hemis FEAR/Wbertro"

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]	= "Test_Missing_FILES.pak",
["MOD_AUTHOR"]		= Mod_Author,
["LUA_AUTHOR"]		= Lua_Author,
["NMS_VERSION"]		= Game_Version,
["MOD_VERSION"] 	= Version,
["MOD_DESCRIPTION"]	= "Test messages when files are missing during extraction/decompiling",
["MODIFICATIONS"]	= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
					"MODELS/EFFECTS/STATION/GENERALFLOATINGSMOKE/SMOKE.PARTICLE.MBIN",
					"MODELS/EFFECTS/STATION/CENTRALORBCOOLANT/EMITTERS/ORBCOOLANT_EMITTER.PARTICLE.MBIN",
					"MODELS/EFFECTS/STATION/CENTRALORBFOG/EMITTERS/ORBFOG_EMITTER.PARTICLE.MBIN",
					"MODELS/EFFECTS/STATION/ENTRANCESMOKE/EMITTERS/SMOKEBLACK_EMITTER.PARTICLE.MBIN",
					"MODELS/EFFECTS/STATION/LANDINGPADSMOKEBURST/SMOKE.PARTICLE.MBIN",
					"MODELS/EFFECTS/STATION/LANDINGPADSMOKELOOP/SMOKE.PARTICLE.MBIN",
					"MODELS/EFFECTS/STATION/LAUNCHTUBEFILLMIST/SMOKE.PARTICLE.MBIN",
					"MODELS/EFFECTS/STATION/LAUNCHTUBEPIPESTEAM/SMOKEJETBASE.PARTICLE.MBIN",
					"MODELS/EFFECTS/STATION/LAUNCHTUBESTEAM/SMOKE.PARTICLE.MBIN",
					"MODELS/EFFECTS/STATION/ORBEYE/MIST.PARTICLE.MBIN",
					"MODELS/EFFECTS/STATION/ORBEYE/XYZ_MIST.PARTICLE.MBIN", -- fake file
					"MODELS/EFFECTS/STATION/ORBLOWERMIST/SMOKE.PARTICLE.MBIN",
					"MODELS/EFFECTS/STATION/ORBVOLUMELIGHT/MIST.PARTICLE.MBIN",
					"MODELS/EFFECTS/STATION/STATIONGROUNDMIST/MIST.PARTICLE.MBIN",
					"MODELS/EFFECTS/STATION/STATIONMIST/MIST.PARTICLE.MBIN",
					"MODELS/EFFECTS/STATION/STATIONMIST/XYZ_MIST.PARTICLE.MBIN", -- fake file
					"MODELS/EFFECTS/STATION/STATIONEXHAUSTVENT/SMOKE.PARTICLE.MBIN",
					"MODELS/EFFECTS/STATION/STATIONCLOUDS/SMOKE.PARTICLE.MBIN",
					"MODELS/EFFECTS/STATION/STATIONTOWERCLOUDS/SMOKE.PARTICLE.MBIN",
					"MODELS/EFFECTS/STATION/STATIONPADVOLUMELIGHT/MIST.PARTICLE.MBIN",
					"MODELS/EFFECTS/STATION/STATIONLARGEVOLUMELIGHT/MIST.PARTICLE.MBIN",
					"MODELS/EFFECTS/STATION/STATIONPITVOLUMELIGHT/MIST.PARTICLE.MBIN",
					"MODELS/EFFECTS/STATION/STATIONVOLUMELIGHT/MIST.PARTICLE.MBIN",
					"MODELS/EFFECTS/STATION/STATIONEXTERIORLIGHTGLOW/MIST.PARTICLE.MBIN",
					"MODELS/EFFECTS/STATION/TOWERLIGHTGLOW/MIST.PARTICLE.MBIN",
					"MODELS/EFFECTS/STATION/PIRATECENTRALORBMIST/MIST.PARTICLE.MBIN",
					"MODELS/EFFECTS/STATION/PIRATEFLOORMIST/SMOKE.PARTICLE.MBIN",
					"MODELS/EFFECTS/STATION/PIRATEROOFMIST/SMOKE.PARTICLE.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"ColourMiddle"},
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"A",	"0.2"}, 		
							},
						},
					},
				},
			},
		},
	}, --26 global replacements
}