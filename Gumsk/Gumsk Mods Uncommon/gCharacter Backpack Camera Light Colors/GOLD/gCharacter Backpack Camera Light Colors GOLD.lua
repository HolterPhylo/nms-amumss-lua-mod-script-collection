Author = "Gumsk"
ModName = "gCharacter Backpack Camera Light Colors"
ModNameSub = "GOLD"
BaseDescription = "Changes the main camera light colors on all backpacks."
GameVersion = "5.2.2.0"
ModVersion = "a"

ColorsRgb = {
    BLACK = {R="0.0",G="0.0",B="0.0"},
    BLUE = {R="0.0",G="0.0",B="1.0"},
    CYAN = {R="0.0",G="0.8",B="0.8"},
    GOLD = {R="1.0",G="0.8",B="0.0"},
    GREEN = {R="0.0",G="1.0",B="0.0"},
    ORANGE = {R="1.0",G="0.46",B="0.09"},
    PINK = {R="1.0",G="0.75",B="0.8"},
    PURPLE = {R="0.5",G="0.0",B="0.5"},
    RED = {R="1.0",G="0.0",B="0.0"},
    TURQ = {R="0.0",G="0.753",B="0.64"},
    WHITE = {R="1.0",G="1.0",B="1.0"},
    YELLOW = {R="1.0",G="1.0",B="0.0"}
}

--[[Files Modified:
MODELS\COMMON\PLAYER\PLAYERCHARACTER\PLAYERCHARACTER\GLOW_MAT12.MATERIAL.MBIN
MODELS\COMMON\PLAYER\PLAYERCHARACTER\PLAYERCHARACTER\GLOW_MAT14.MATERIAL.MBIN
MODELS\COMMON\PLAYER\PLAYERCHARACTER\PLAYERCHARACTER\GLOW_MAT15.MATERIAL.MBIN
MODELS\COMMON\PLAYER\PLAYERCHARACTER\PLAYERCHARACTER\LIGHT_MAT16.MATERIAL.MBIN
TEXTURES/COMMON/PLAYER/PLAYERCHARACTER/CAMERALIGHTS.1.DDS
TEXTURES/COMMON/PLAYER/HELMETLIGHT_1.DDS
]]--

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME = ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
	MOD_DESCRIPTION = BaseDescription,
	MOD_AUTHOR = Author,
	LUA_AUTHOR = "Gumsk",
	NMS_VERSION = GameVersion,
	GLOBAL_INTEGER_TO_FLOAT = "FORCE",
	ADD_FILES = {
		{
			FILE_DESTINATION		= "TEXTURES/COMMON/PLAYER/PLAYERCHARACTER/CAMERALIGHTS.1.DDS",
			EXTERNAL_FILE_SOURCE 	= "CAMERALIGHTS.1.DDS"
		},
		{
			FILE_DESTINATION		= "TEXTURES/COMMON/PLAYER/PLAYERCHARACTER/HELMETLIGHT_1.DDS",
			EXTERNAL_FILE_SOURCE 	= "HELMETLIGHT_1.DDS"
		},
	},
	MODIFICATIONS = {
		{
			MBIN_CHANGE_TABLE = {
				{
					MBIN_FILE_SOURCE = {
						"MODELS\COMMON\PLAYER\PLAYERCHARACTER\PLAYERCHARACTER\GLOW_MAT12.MATERIAL.MBIN",
						"MODELS\COMMON\PLAYER\PLAYERCHARACTER\PLAYERCHARACTER\GLOW_MAT14.MATERIAL.MBIN",
						"MODELS\COMMON\PLAYER\PLAYERCHARACTER\PLAYERCHARACTER\GLOW_MAT15.MATERIAL.MBIN"
						
					},
					EXML_CHANGE_TABLE = {
						{
							SPECIAL_KEY_WORDS = {"Name","gMaterialColourVec4"},
							VALUE_CHANGE_TABLE = {
								{"x",ColorsRgb[ModNameSub]["R"]},
								{"y",ColorsRgb[ModNameSub]["G"]},
								{"z",ColorsRgb[ModNameSub]["B"]}
							}
						}
					}
				},
				{
					MBIN_FILE_SOURCE = {
						"MODELS\COMMON\PLAYER\PLAYERCHARACTER\PLAYERCHARACTER\GLOW_MAT12.MATERIAL.MBIN",
						"MODELS\COMMON\PLAYER\PLAYERCHARACTER\PLAYERCHARACTER\GLOW_MAT14.MATERIAL.MBIN",
						"MODELS\COMMON\PLAYER\PLAYERCHARACTER\PLAYERCHARACTER\GLOW_MAT15.MATERIAL.MBIN",
						"MODELS\COMMON\PLAYER\PLAYERCHARACTER\PLAYERCHARACTER\LIGHT_MAT16.MATERIAL.MBIN",
					},
					EXML_CHANGE_TABLE = {
						{
							SPECIAL_KEY_WORDS = {"Name","gCustomParams01Vec4"},
							VALUE_CHANGE_TABLE = {
								{"y",1},
							}
						}
					}
				}
			}
		}
	}
}