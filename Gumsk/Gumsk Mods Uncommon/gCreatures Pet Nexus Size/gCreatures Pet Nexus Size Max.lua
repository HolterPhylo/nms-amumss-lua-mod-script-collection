Author = "Gumsk"
ModName = "GCreatures Pet Nexus Size"
ModNameSub = "Max"
BaseDescription = "Unlocks Nexus pet size"
GameVersion = "5.2.2.0"
ModVersion = "a"
FileSource1 = "GCCREATUREGLOBALS.MBIN"

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
	MOD_DESCRIPTION	= BaseDescription,
	MOD_AUTHOR		= Author,
	NMS_VERSION		= GameVersion,
	MODIFICATIONS	= {
		{
			MBIN_CHANGE_TABLE = {
				{
					MBIN_FILE_SOURCE = FileSource1,
					EXML_CHANGE_TABLE = {
						{
							VALUE_CHANGE_TABLE = {
								{"PetMaxSizeOffPlanet", 20},
							},
						},
					},
				},
			}
		}
	}
}