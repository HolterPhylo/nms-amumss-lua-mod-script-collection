Author = "Gumsk"
ModName = "gSound"
ModNameSub = "Freighter Refiner Room"
BaseDescription = "Mutes the freighter refiner room"
GameVersion = "5.1.2.0"
ModVersion = "a"

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
	MOD_DESCRIPTION	= BaseDescription,
	MOD_AUTHOR		= Author,
	LUA_AUTHOR		= "Gumsk",
	NMS_VERSION		= GameVersion,
	MODIFICATIONS	= {
		{
			MBIN_CHANGE_TABLE = {
				{
					MBIN_FILE_SOURCE = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\REFINERROOM\PARTS\FLOOR0\ENTITIES\REFINERTERMINAL.ENTITY.MBIN",
					EXML_CHANGE_TABLE = {
						{
							SPECIAL_KEY_WORDS = {
                "Sound","Freighter_Refiner_Running",
              },
              SECTION_UP = 1,
              REMOVE_TYPE = "ALL",
              REMOVE = "SECTION",
						}
					}
				},
			}
		}
	}
}