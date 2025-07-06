-- FOR USE ALONG WITH THE ORIGINAL HOBOTOWN PAK
-- THIS SCRIPT DOESN NOT GENERATE CERTAIN VITAL FILES

EDITION = "BIG" 	--"BIG" OR "NO_BIG"
SLEEP = true		--MODIFIES 2 VALUES IN GCCREATUREGLOBALS
					--ALLOWS SPAWNING CLOSER TO BASES AND WILD CREATURE SLEEPING

-- CREATURE RARITY
-- 1 = Common, 2, Uncommon, 3 = Rare, 4 = SuperRare
HOBO_RARITY 	= 1			
HOBO_BIG_RARITY	= 3

PAK_NAME =
{
	["NO_BIG"]	= "++MOD_Winder_HoboTown_NoHugh_METADATA",
	["BIG"] 	= "++MOD_Winder_HoboTown_Hugh_METADATA",
}

ECOSYSTEM_PATHS = 
{
	["Cave"] = 					"CAVE\CAVETABLECOMMON",
	["Ground_Alien"] =			"GROUND\GROUNDTABLEALIEN",
	["Ground_Herb_L"] =			"GROUND\GROUNDTABLEHERBIVORELARGE",
	["Ground_Herb_M"] =			"GROUND\GROUNDTABLEHERBIVOREMED",
	["Ground_Herb_S"] =			"GROUND\GROUNDTABLEHERBIVORESMALL",
	["Ground_Herd"] =			"GROUND\GROUNDTABLEHERDMED",
	["Ground_Pred_L"] =			"GROUND\GROUNDTABLEPREDATORLARGE",
	["Ground_Pred_M"] =			"GROUND\GROUNDTABLEPREDATORMED",
	["Ground_PlayerPred_M"] =	"GROUND\GROUNDTABLEPLAYERPREDATORMED",
	["Ground_PlayerPred_L"] =	"GROUND\GROUNDTABLEPLAYERPREDATORLARGE",
	["Ground_Herb_XL"] =		"GROUND\GROUNDTABLEHERBIVOREGIANT",
}

BOYOS_ID =
{
	["NO_BIG"] =	"GENTLEMEN",
	["BIG"] =		"BIGMOMMY",
}

CREATURE_RARITY =
{
	"Common",
	"Uncommon",
	"Rare",
	"SuperRare",
}

BOYOS_DATA =
-- CREATUREDATATABLE, CREATUREFILENAMETABLE, AND ROLE DESCRIPTOR TABLES DATA
{
	["NO_BIG"] =
	{
		["Paths"] =
		{
			["Filename"] = 		"CUSTOMMODELS\WINDER\HOBO\HOBO_PROC_NORMAL.SCENE.MBIN",
			["ExtraFilename"] = "",
			--["ExtraFilename"] = "CUSTOMMODELS\WINDER\HOBO\HOBO_PROC_GEK.SCENE.MBIN",
		},
			["GcCreatureData"] = [[
		<Property name="Table" value="GcCreatureData" _id="]] .. BOYOS_ID["NO_BIG"] .. [[" _overwrite="true">
      <Property name="Id" value="]] .. BOYOS_ID["NO_BIG"] .. [[" />
      <Property name="OnlySpawnWhenIdIsForced" value="False" />
      <Property name="ForceType" value="GcCreatureTypes">
        <Property name="CreatureType" value="None" />
      </Property>
      <Property name="RealType" value="GcCreatureTypes">
        <Property name="CreatureType" value="None" />
      </Property>
      <Property name="EcoSystemCreature" value="True" />
      <Property name="CanBeFemale" value="True" />
      <Property name="Tags">
				<Property name="Tags" value="GcCreatureTagAndRarity">
          <Property name="Tag" value="HERD" />
          <Property name="RarityOverride" value="GcCreatureRarity">
            <Property name="CreatureRarity" value="]] .. CREATURE_RARITY[HOBO_RARITY] .. [[" />
          </Property>
        </Property>
      </Property>
      <Property name="MoveArea" value="Ground" />
      <Property name="MinScale" value="0.975" />
      <Property name="MaxScale" value="1.3" />
      <Property name="FurLengthModifierAtMinScale" value="1" />
      <Property name="FurLengthModifierAtMaxScale" value="1" />
      <Property name="FurChance" value="0" />
      <Property name="Rarity" value="GcCreatureRarity">
        <Property name="CreatureRarity" value="]] .. CREATURE_RARITY[HOBO_RARITY] .. [[" />
      </Property>
      <Property name="PredatorProbabilityModifier" value="GcCreatureRoleFrequencyModifier">
        <Property name="CreatureRoleFrequencyModifier" value="Normal" />
      </Property>
      <Property name="HerbivoreProbabilityModifier" value="GcCreatureRoleFrequencyModifier">
        <Property name="CreatureRoleFrequencyModifier" value="Normal" />
      </Property>
      <Property name="Data">
				<Property name="Data" value="GcCreatureMovementData">
					<Property name="GcCreatureMovementData">
						<Property name="Anims">
							<Property name="Anims" value="GcCreatureMoveAnimData">
								<Property name="Anim" value="0H_WALK_F_NPC" />
								<Property name="AnimLeft" value="" />
								<Property name="AnimRight" value="" />
								<Property name="AnimSpeed" value="0.8" />
								<Property name="MinSpeedScale" value="1" />
								<Property name="MaxSpeedScale" value="1" />
								<Property name="MaxPredatorSpeedScale" value="1" />
								<Property name="MinPetSpeedScale" value="1" />
								<Property name="MaxPetSpeedScale" value="1" />
								<Property name="AnimMoveSpeed" value="0" />
								<Property name="AnimMoveSpeedCached" value="False" />
							</Property>
							<Property name="Anims" value="GcCreatureMoveAnimData">
								<Property name="Anim" value="0H_JOG_F" />
								<Property name="AnimLeft" value="0H_JOG_L" />
								<Property name="AnimRight" value="0H_JOG_R" />
								<Property name="AnimSpeed" value="0.35" />
								<Property name="MinSpeedScale" value="1.35" />
								<Property name="MaxSpeedScale" value="1.35" />
								<Property name="MaxPredatorSpeedScale" value="1.8" />
								<Property name="MinPetSpeedScale" value="1" />
								<Property name="MaxPetSpeedScale" value="1.6" />
								<Property name="AnimMoveSpeed" value="0" />
								<Property name="AnimMoveSpeedCached" value="False" />
							</Property>
							<Property name="Anims" value="GcCreatureMoveAnimData">
								<Property name="Anim" value="0H_RUN" />
								<Property name="AnimLeft" value="" />
								<Property name="AnimRight" value="" />
								<Property name="AnimSpeed" value="0.15" />
								<Property name="MinSpeedScale" value="1.5" />
								<Property name="MaxSpeedScale" value="1.5" />
								<Property name="MaxPredatorSpeedScale" value="1.8" />
								<Property name="MinPetSpeedScale" value="1" />
								<Property name="MaxPetSpeedScale" value="1" />
								<Property name="AnimMoveSpeed" value="0" />
								<Property name="AnimMoveSpeedCached" value="False" />
							</Property>
						</Property>
						<Property name="MoveRange" value="12" />
						<Property name="MoveSpeedScale" value="1.3" />
						<Property name="TurnRadiusScale" value="1" />
						<Property name="HeightMin" value="1" />
						<Property name="HeightMax" value="1.25" />
						<Property name="HeightTime" value="1" />
						<Property name="Herd" value="True" />
					</Property>
        </Property>
				<Property name="Data" value="GcCreatureVocalData">
					<Property name="GcCreatureVocalData">
						<Property name="ScaleBias" value="1" />
						<Property name="IdleVocal" value="GcCreatureVocalSoundData">
							<Property name="Id" value="" />
							<Property name="VocalEmote" value="EmoteIdle" />
							<Property name="PlayFrequency" value="0.35" />
							<Property name="MinCooldown" value="5" />
							<Property name="MaxCooldown" value="15" />
							<Property name="PlayImmediately" value="False" />
							<Property name="PlayOnlyOnce" value="False" />
						</Property>
						<Property name="FleeVocal" value="GcCreatureVocalSoundData">
							<Property name="Id" value="" />
							<Property name="VocalEmote" value="EmoteFlee" />
							<Property name="PlayFrequency" value="0.15" />
							<Property name="MinCooldown" value="2.5" />
							<Property name="MaxCooldown" value="10" />
							<Property name="PlayImmediately" value="True" />
							<Property name="PlayOnlyOnce" value="False" />
						</Property>
						<Property name="DeathVocal" value="GcCreatureVocalSoundData">
							<Property name="Id" value="" />
							<Property name="VocalEmote" value="EmoteDie" />
							<Property name="PlayFrequency" value="1" />
							<Property name="MinCooldown" value="5" />
							<Property name="MaxCooldown" value="15" />
							<Property name="PlayImmediately" value="True" />
							<Property name="PlayOnlyOnce" value="True" />
						</Property>
						<Property name="AttackVocal" value="GcCreatureVocalSoundData">
							<Property name="Id" value="" />
							<Property name="VocalEmote" value="EmoteAttack" />
							<Property name="PlayFrequency" value="1" />
							<Property name="MinCooldown" value="5" />
							<Property name="MaxCooldown" value="15" />
							<Property name="PlayImmediately" value="True" />
							<Property name="PlayOnlyOnce" value="True" />
						</Property>
					</Property>
				</Property>
				<Property name="Data" value="GcCreatureFootParticleData">
					<Property name="GcCreatureFootParticleData">
						<Property name="ParticleData">
							<Property name="ParticleData" value="GcCreatureFootParticleSingleData">
								<Property name="EffectName" value="FOOTFROZEN" />
								<Property name="Scale" value="1" />
								<Property name="MinCreatureSize" value="0.5" />
								<Property name="MaxCreatureSize" value="100" />
								<Property name="MoveSpeed" value="Run" />
							</Property>
						</Property>
					</Property>
        </Property>
				<Property name="Data" value="GcCreatureRidingData">
					<Property value="GcCreatureRidingData">
						<Property name="JointName" value="player01_spine_TopSHJnt" />
						<Property name="AdditionalScaleJoint" value="" />
						<Property name="Offset" value="Vector3f">
							<Property name="X" value="0" />
							<Property name="Y" value="0.18" />
							<Property name="Z" value="0.03" />
						</Property>
						<Property name="RotationOffset" value="Vector3f">
							<Property name="X" value="2" />
							<Property name="Y" value="0" />
							<Property name="Z" value="0" />
						</Property>
						<Property name="VROffset" value="Vector3f">
							<Property name="X" value="0" />
							<Property name="Y" value="0" />
							<Property name="Z" value="-0.1" />
						</Property>
						<Property name="HeadCounterRotation" value="0" />
						<Property name="UprightStrength" value="1" />
						<Property name="LegSpread" value="True" />
						<Property name="ScaleForNeutralLegSpread" value="1" />
						<Property name="ScaleForMinLegSpread" value="0.35" />
						<Property name="ScaleForMaxLegSpread" value="4.75" />
						<Property name="RequiresMatchingPartModifier" value="False" />
						<Property name="PartModifiers" />
						<Property name="IdleRidingAnim" value="RIDE_ANT_IDLE" />
						<Property name="DefaultRidingAnim" value="RIDE_ANT_WALK" />
						<Property name="RidingAnims">
							<Property value="GcCreatureRidingAnimation">
								<Property name="MovementAnim" value="0H_JOG_F" />
								<Property name="RidingAnim" value="RIDE_ANT_TROT" />
							</Property>
							<Property value="GcCreatureRidingAnimation">
								<Property name="MovementAnim" value="0H_RUN" />
								<Property name="RidingAnim" value="RIDE_ANT_RUN" />
							</Property>
						</Property>
					</Property>
				</Property>
      </Property>
    </Property>
]],
		["Size"] = "Medium",
		["Ecosystem"] =
		{
			["Cave"] =	{
				["Path"] = ECOSYSTEM_PATHS["Cave"],
				["Roles"] = 
				{
					{ ["CreatureRole"] = 		"Passive",
					  ["MinGroupSize"] =		"12",
					  ["MaxGroupSize"] = 		"24",
					  ["Density"] = 			"Normal",
					  ["CreatureActiveTime"] =	"AnyTime",
					},
					{ ["CreatureRole"] = 		"Predator",
					  ["MinGroupSize"] =		"8",
					  ["MaxGroupSize"] = 		"14",
					  ["Density"] = 			"Sparse",
					  ["CreatureActiveTime"] =	"AnyTime",
					},
				}
			},
			["Ground_Alien"] =	{
				["Path"] = ECOSYSTEM_PATHS["Ground_Alien"],
				["Roles"] = 
				{
					{ ["CreatureRole"] = 		"Passive",
					  ["MinGroupSize"] =		"8",
					  ["MaxGroupSize"] = 		"16",
					  ["Density"] = 			"Normal",
					  ["CreatureActiveTime"] =	"AnyTime",
					},
					{ ["CreatureRole"] = 		"Predator",
					  ["MinGroupSize"] =		"8",
					  ["MaxGroupSize"] = 		"14",
					  ["Density"] = 			"Sparse",
					  ["CreatureActiveTime"] =	"AnyTime",
					},
				}
			},
			["Ground_Herb_L"] =	{
				["Path"] = ECOSYSTEM_PATHS["Ground_Herb_L"],
				["Roles"] = 
				{
					{ ["CreatureRole"] = 		"Passive",
					  ["MinGroupSize"] =		"8",
					  ["MaxGroupSize"] = 		"16",
					  ["Density"] = 			"Normal",
					  ["CreatureActiveTime"] =	"AnyTime",
					},
				}
			},
			["Ground_Herb_M"] =	{
				["Path"] = ECOSYSTEM_PATHS["Ground_Herb_M"],
				["Roles"] = 
				{
					{ ["CreatureRole"] = 		"Passive",
					  ["MinGroupSize"] =		"8",
					  ["MaxGroupSize"] = 		"16",
					  ["Density"] = 			"Normal",
					  ["CreatureActiveTime"] =	"AnyTime",
					},
				}
			},
			["Ground_Herb_S"] =	{
				["Path"] = ECOSYSTEM_PATHS["Ground_Herb_S"],
				["Roles"] = 
				{
					{ ["CreatureRole"] = 		"Passive",
					  ["MinGroupSize"] =		"8",
					  ["MaxGroupSize"] = 		"16",
					  ["Density"] = 			"Normal",
					  ["CreatureActiveTime"] =	"AnyTime",
					},
				}
			},
			["Ground_Herd"] =	{
				["Path"] = ECOSYSTEM_PATHS["Ground_Herd"],
				["Roles"] = 
				{
					{ ["CreatureRole"] = 		"Passive",
					  ["MinGroupSize"] =		"10",
					  ["MaxGroupSize"] = 		"20",
					  ["Density"] = 			"Dense",
					  ["CreatureActiveTime"] =	"AnyTime",
					},
					{ ["CreatureRole"] = 		"Predator",
					  ["MinGroupSize"] =		"8",
					  ["MaxGroupSize"] = 		"14",
					  ["Density"] = 			"Normal",
					  ["CreatureActiveTime"] =	"AnyTime",
					},
				}
			},
			["Ground_Pred_L"] =	{
				["Path"] = ECOSYSTEM_PATHS["Ground_Pred_L"],
				["Roles"] = 
				{
					{ ["CreatureRole"] = 		"Predator",
					  ["MinGroupSize"] =		"8",
					  ["MaxGroupSize"] = 		"14",
					  ["Density"] = 			"Normal",
					  ["CreatureActiveTime"] =	"AnyTime",
					},
				}
			},
			["Ground_Pred_M"] =	{
				["Path"] = ECOSYSTEM_PATHS["Ground_Pred_M"],
				["Roles"] = 
				{
					{ ["CreatureRole"] = 		"Predator",
					  ["MinGroupSize"] =		"8",
					  ["MaxGroupSize"] = 		"14",
					  ["Density"] = 			"Normal",
					  ["CreatureActiveTime"] =	"AnyTime",
					},
				}
			},
			["Ground_PlayerPred_M"] =	{
				["Path"] = ECOSYSTEM_PATHS["Ground_PlayerPred_M"],
				["Roles"] = 
				{
					{ ["CreatureRole"] = 		"PlayerPredator",
					  ["MinGroupSize"] =		"8",
					  ["MaxGroupSize"] = 		"14",
					  ["Density"] = 			"Sparse",
					  ["CreatureActiveTime"] =	"AnyTime",
					},
				}
			},
			["Ground_PlayerPred_L"] =	{
				["Path"] = ECOSYSTEM_PATHS["Ground_PlayerPred_L"],
				["Roles"] = 
				{
					{ ["CreatureRole"] = 		"PlayerPredator",
					  ["MinGroupSize"] =		"8",
					  ["MaxGroupSize"] = 		"14",
					  ["Density"] = 			"Normal",
					  ["CreatureActiveTime"] =	"AnyTime",
					},
				}
			},
		},
	},
	["BIG"] =
	{
		["Paths"] =	
		{
			["Filename"] = 		"CUSTOMMODELS\WINDER\HOBO\BIG\HOBO_PROC_NORMAL_BIG.SCENE.MBIN",
			["ExtraFilename"] = "",
			-- ["ExtraFilename"] = "CUSTOMMODELS\WINDER\HOBO\BIG\HOBO_PROC_GEK_BIG.SCENE.MBIN",
		},
		["GcCreatureData"] = [[
		<Property name="Table" value="GcCreatureData" _id="]] .. BOYOS_ID["BIG"] .. [[" _overwrite="true">
      <Property name="Id" value="]] .. BOYOS_ID["BIG"] .. [[" />
      <Property name="OnlySpawnWhenIdIsForced" value="False" />
      <Property name="ForceType" value="GcCreatureTypes">
        <Property name="CreatureType" value="None" />
      </Property>
      <Property name="RealType" value="GcCreatureTypes">
        <Property name="CreatureType" value="None" />
      </Property>
      <Property name="EcoSystemCreature" value="True" />
      <Property name="CanBeFemale" value="True" />
      <Property name="Tags" />
      <Property name="MoveArea" value="Ground" />
      <Property name="MinScale" value="10" />
      <Property name="MaxScale" value="13.5" />
      <Property name="FurLengthModifierAtMinScale" value="1" />
      <Property name="FurLengthModifierAtMaxScale" value="1" />
      <Property name="FurChance" value="0" />
      <Property name="Rarity" value="GcCreatureRarity">
        <Property name="CreatureRarity" value="]] .. CREATURE_RARITY[HOBO_BIG_RARITY] .. [[" />
      </Property>
      <Property name="PredatorProbabilityModifier" value="GcCreatureRoleFrequencyModifier">
        <Property name="CreatureRoleFrequencyModifier" value="High" />
      </Property>
      <Property name="HerbivoreProbabilityModifier" value="GcCreatureRoleFrequencyModifier">
        <Property name="CreatureRoleFrequencyModifier" value="Low" />
      </Property>
      <Property name="Data">
				<Property name="Data" value="GcCreatureMovementData">
					<Property name="GcCreatureMovementData">
          <Property name="Anims">
            <Property name="Anims" value="GcCreatureMoveAnimData">
              <Property name="Anim" value="0H_WALK_F_NPC" />
              <Property name="AnimLeft" value="" />
              <Property name="AnimRight" value="" />
              <Property name="AnimSpeed" value="0.2" />
              <Property name="MinSpeedScale" value="0.8" />
              <Property name="MaxSpeedScale" value="0.88" />
              <Property name="MaxPredatorSpeedScale" value="0.9" />
              <Property name="MinPetSpeedScale" value="0.8" />
              <Property name="MaxPetSpeedScale" value="0.88" />
              <Property name="AnimMoveSpeed" value="0" />
              <Property name="AnimMoveSpeedCached" value="False" />
            </Property>
            <Property name="Anims" value="GcCreatureMoveAnimData">
              <Property name="Anim" value="0H_JOG_F" />
              <Property name="AnimLeft" value="0H_JOG_L" />
              <Property name="AnimRight" value="0H_JOG_R" />
              <Property name="AnimSpeed" value="0.3" />
              <Property name="MinSpeedScale" value="0.9" />
              <Property name="MaxSpeedScale" value="1" />
              <Property name="MaxPredatorSpeedScale" value="1.1" />
              <Property name="MinPetSpeedScale" value="0.9" />
              <Property name="MaxPetSpeedScale" value="1" />
              <Property name="AnimMoveSpeed" value="0" />
              <Property name="AnimMoveSpeedCached" value="False" />
            </Property>
            <Property name="Anims" value="GcCreatureMoveAnimData">
              <Property name="Anim" value="0H_RUN" />
              <Property name="AnimLeft" value="" />
              <Property name="AnimRight" value="" />
              <Property name="AnimSpeed" value="0.14" />
              <Property name="MinSpeedScale" value="1.01" />
              <Property name="MaxSpeedScale" value="1.1" />
              <Property name="MaxPredatorSpeedScale" value="1.15" />
              <Property name="MinPetSpeedScale" value="1.01" />
              <Property name="MaxPetSpeedScale" value="1.1" />
              <Property name="AnimMoveSpeed" value="0" />
              <Property name="AnimMoveSpeedCached" value="False" />
            </Property>
          </Property>
          <Property name="MoveRange" value="600" />
          <Property name="MoveSpeedScale" value="0.1" />
          <Property name="TurnRadiusScale" value="3" />
          <Property name="HeightMin" value="18" />
          <Property name="HeightMax" value="128" />
          <Property name="HeightTime" value="1" />
          <Property name="Herd" value="False" />
        </Property>
        </Property>
				<Property name="Data" value="GcCreatureVocalData">
					<Property name="GcCreatureVocalData">
          <Property name="ScaleBias" value="1" />
          <Property name="IdleVocal" value="GcCreatureVocalSoundData">
            <Property name="Id" value="" />
            <Property name="VocalEmote" value="EmoteIdle" />
            <Property name="PlayFrequency" value="0.35" />
            <Property name="MinCooldown" value="5" />
            <Property name="MaxCooldown" value="15" />
            <Property name="PlayImmediately" value="False" />
            <Property name="PlayOnlyOnce" value="False" />
          </Property>
          <Property name="FleeVocal" value="GcCreatureVocalSoundData">
            <Property name="Id" value="" />
            <Property name="VocalEmote" value="EmoteFlee" />
            <Property name="PlayFrequency" value="0.15" />
            <Property name="MinCooldown" value="2.5" />
            <Property name="MaxCooldown" value="10" />
            <Property name="PlayImmediately" value="True" />
            <Property name="PlayOnlyOnce" value="False" />
          </Property>
          <Property name="DeathVocal" value="GcCreatureVocalSoundData">
            <Property name="Id" value="" />
            <Property name="VocalEmote" value="EmoteDie" />
            <Property name="PlayFrequency" value="1" />
            <Property name="MinCooldown" value="5" />
            <Property name="MaxCooldown" value="15" />
            <Property name="PlayImmediately" value="True" />
            <Property name="PlayOnlyOnce" value="True" />
          </Property>
          <Property name="AttackVocal" value="GcCreatureVocalSoundData">
            <Property name="Id" value="" />
            <Property name="VocalEmote" value="EmoteAttack" />
            <Property name="PlayFrequency" value="1" />
            <Property name="MinCooldown" value="5" />
            <Property name="MaxCooldown" value="15" />
            <Property name="PlayImmediately" value="True" />
            <Property name="PlayOnlyOnce" value="True" />
          </Property>
        </Property>
				</Property>
				<Property name="Data" value="GcCreatureFootParticleData">
					<Property name="GcCreatureFootParticleData">
						<Property name="ParticleData">
							<Property name="ParticleData" value="GcCreatureFootParticleSingleData">
								<Property name="EffectName" value="FOOTFROZEN" />
								<Property name="Scale" value="1" />
								<Property name="MinCreatureSize" value="0.5" />
								<Property name="MaxCreatureSize" value="100" />
								<Property name="MoveSpeed" value="Run" />
							</Property>
						</Property>
					</Property>
        </Property>
	  </Property>
    </Property>
]],
		["Size"] = "Huge",
		["Ecosystem"] =
		{
			["Ground_Herb_L"] =	{
				["Path"] = ECOSYSTEM_PATHS["Ground_Herb_L"],
				["Roles"] = 
				{
					{ ["CreatureRole"] = 		"Predator",
					  ["MinGroupSize"] =		"1",
					  ["MaxGroupSize"] = 		"4",
					  ["Density"] = 			"Sparse",
					  ["CreatureActiveTime"] =	"AnyTime",
					},
				}
			},
			["Ground_Pred_L"] =	{
				["Path"] = ECOSYSTEM_PATHS["Ground_Pred_L"],
				["Roles"] = 
				{
					{ ["CreatureRole"] = 		"Predator",
					  ["MinGroupSize"] =		"1",
					  ["MaxGroupSize"] = 		"4",
					  ["Density"] = 			"Sparse",
					  ["CreatureActiveTime"] =	"AnyTime",
					},
				}
			},
			["Ground_PlayerPred_L"] =	{
				["Path"] = ECOSYSTEM_PATHS["Ground_PlayerPred_L"],
				["Roles"] = 
				{
					{ ["CreatureRole"] = 		"PlayerPredator",
					  ["MinGroupSize"] =		"1",
					  ["MaxGroupSize"] = 		"4",
					  ["Density"] = 			"Sparse",
					  ["CreatureActiveTime"] =	"AnyTime",
					},
				}
			},
			["Ground_Herb_XL"] =	{
				["Path"] = ECOSYSTEM_PATHS["Ground_Herb_XL"],
				["Roles"] = 
				{
					{ ["CreatureRole"] = 		"Predator",
					  ["MinGroupSize"] =		"1",
					  ["MaxGroupSize"] = 		"4",
					  ["Density"] = 			"Sparse",
					  ["CreatureActiveTime"] =	"AnyTime",
					},
				}
			},
		},
	},
}

GLOBAL_MOD = 
-- CHANGES TO GLOBALS
{
	["MBIN_FILE_SOURCE"] 	= "GCCREATUREGLOBALS.MBIN",
	["MXML_CHANGE_TABLE"]	= 
	{
		{
			["INTEGER_TO_FLOAT"]	= "FORCE",
			["VALUE_CHANGE_TABLE"] 	= 
			{
				{"SpawnsAvoidBaseMultiplier",		"0"	},		--Base & Building restrict radius?
				{"AllowSleeping",					"True"	}, 	--Allow Sleeping
			}
		},
	},
}

function GetCreatureFilenames(ID, PATH1, PATH2)
return	[[
		<Property name="Table" value="GcCreatureFilename" _id="]] .. ID .. [[" _overwrite="true">
      <Property name="ID" value="]] .. ID .. [[" />
      <Property name="Filename" value="]] .. PATH1 .. [[" />
      <Property name="ExtraFilename" value="]] .. PATH2 .. [[" />
    </Property>
]]
end

function GetEcosystemData(ROLE, ID, CLASS, GROUP_MIN, GROUP_MAX, DENSITY, TIME)
return	[[
		<Property name="RoleDescription" value="GcCreatureRoleDescription">
      <Property name="Role" value="GcCreatureRoles">
        <Property name="CreatureRole" value="]] .. ROLE .. [[" />
      </Property>
      <Property name="ForceType" value="GcCreatureTypes">
        <Property name="CreatureType" value="None" />
      </Property>
      <Property name="ForceID" value="]] .. ID .. [[" />
      <Property name="RequireTag" value="" />
      <Property name="MinSize" value="GcCreatureSizeClasses">
        <Property name="CreatureSizeClass" value="]] .. CLASS .. [[" />
      </Property>
      <Property name="MaxSize" value="GcCreatureSizeClasses">
        <Property name="CreatureSizeClass" value="]] .. CLASS .. [[" />
      </Property>
      <Property name="MinGroupSize" value="]] .. GROUP_MIN .. [[" />
      <Property name="MaxGroupSize" value="]] .. GROUP_MAX .. [[" />
      <Property name="Density" value="GcCreatureGenerationDensity">
        <Property name="Density" value="]] .. DENSITY .. [[" />
      </Property>
      <Property name="ActiveTime" value="GcCreatureActiveTime">
        <Property name="CreatureActiveTime" value="]] .. TIME .. [[" />
      </Property>
      <Property name="ProbabilityOfBeingEnabled" value="1" />
      <Property name="IncreasedSpawnDistance" value="1" />
      <Property name="Filter" value="" />
    </Property>
]]
end

--NORMAL SIZED HOBOS
DATA_ADD = BOYOS_DATA["NO_BIG"]["GcCreatureData"]
FILENAME_ADD = GetCreatureFilenames(BOYOS_ID["NO_BIG"], BOYOS_DATA["NO_BIG"]["Paths"]["Filename"], BOYOS_DATA["NO_BIG"]["Paths"]["ExtraFilename"])
FINAL_CHANGE = {}
--ASSEMBLING ROLE DESCRIPTOR TABLES EXML
for i,j in pairs(BOYOS_DATA["NO_BIG"]["Ecosystem"]) do
	ECO_ADD = {}
	ROLE_ADD = ""
	for k,l in pairs(j["Roles"]) do
		ROLE_ADD = ROLE_ADD .. GetEcosystemData(l["CreatureRole"], BOYOS_ID["NO_BIG"], BOYOS_DATA["NO_BIG"]["Size"], l["MinGroupSize"], l["MaxGroupSize"], l["Density"], l["CreatureActiveTime"])
	end
	ECO_ADD = 
		{
			["MBIN_FILE_SOURCE"] = [[METADATA\SIMULATION\ECOSYSTEM\]] .. j["Path"] .. [[.EXML]],
			["MXML_CHANGE_TABLE"] =
			{
				{
					["PRECEDING_KEY_WORDS"] = {"RoleDescription"},  
					--["LINE_OFFSET"] 		= "+0",
					["ADD"] 				= ROLE_ADD
				},
			},
		}
	table.insert(FINAL_CHANGE, ECO_ADD)
end

--HUMONGOUS DATA
if EDITION == "BIG" then
	DATA_ADD = DATA_ADD .. BOYOS_DATA["BIG"]["GcCreatureData"]
	FILENAME_ADD = FILENAME_ADD .. GetCreatureFilenames(BOYOS_ID["BIG"], BOYOS_DATA["BIG"]["Paths"]["Filename"], BOYOS_DATA["BIG"]["Paths"]["ExtraFilename"])
	--SAME CODE AS HOBOS EXCEPT "NO_BIG" IS SWITCHED TO "BIG"
	for i,j in pairs(BOYOS_DATA["BIG"]["Ecosystem"]) do
		ECO_ADD = {}
		ROLE_ADD = ""
		for k,l in pairs(j["Roles"]) do
			ROLE_ADD = ROLE_ADD .. GetEcosystemData(l["CreatureRole"], BOYOS_ID["BIG"], BOYOS_DATA["BIG"]["Size"], l["MinGroupSize"], l["MaxGroupSize"], l["Density"], l["CreatureActiveTime"])
		end
		ECO_ADD = 
			{
				["MBIN_FILE_SOURCE"] = [[METADATA\SIMULATION\ECOSYSTEM\]] .. j["Path"] .. [[.MBIN]],
				["MXML_CHANGE_TABLE"] =
				{
					{
						["PRECEDING_KEY_WORDS"] = {"RoleDescription"},  
						--["LINE_OFFSET"] 		= "+0",
						["ADD"] 				= ROLE_ADD
					},
				},
			}
		table.insert(FINAL_CHANGE, ECO_ADD)
	end
end

DATA_FINAL = 
{
	["MBIN_FILE_SOURCE"] 	= "METADATA\SIMULATION\ECOSYSTEM\CREATUREDATATABLE.EXML",
	["MXML_CHANGE_TABLE"]	= 
	{
		{
			["PRECEDING_KEY_WORDS"] = {"Table"},  
			--["LINE_OFFSET"] 		= "+0",
			["ADD"] 				= DATA_ADD
		},
	},
}

FILENAME_FINAL = 
{
	["MBIN_FILE_SOURCE"] 	= "METADATA\SIMULATION\ECOSYSTEM\CREATUREFILENAMETABLE.EXML",
	["MXML_CHANGE_TABLE"]	= 
	{
		{
			["PRECEDING_KEY_WORDS"] = {"Table"},  
			--["LINE_OFFSET"] 		= "+0",
			["ADD"] 				= FILENAME_ADD
		},
	},
}

table.insert(FINAL_CHANGE, DATA_FINAL)
table.insert(FINAL_CHANGE, FILENAME_FINAL)
if SLEEP then
	table.insert(FINAL_CHANGE, GLOBAL_MOD)
end

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 		= PAK_NAME[EDITION],
["MOD_DESCRIPTION"]		= "Wild NPCs",
["MOD_AUTHOR"]			= "WinderTP",
["NMS_VERSION"]			= "3.42.0.1",
["MODIFICATIONS"] 		= 
	{
		{
			["MBIN_CHANGE_TABLE"] = FINAL_CHANGE
		}
	},
}