GameVersion = "5_62"
ModName = "UniqueExoCraftsX"
Description = "A small mod that make exocraft faster but also stand out from eachother"

--GCTechnologyTablePath = "METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN"
VehicleGlobalsPath = "GCVEHICLEGLOBALS.GLOBAL.MBIN"

NomadSpeed = "24"		--18
RoamerSpeed = "20"		--16
PilgrimSpeed = "28"		--18
ColossusSpeed = "20"	--12	(still ends up significantly slower than roamer overall due to other variables below)
NautilonSpeed = "36"	--22	(18 pre-5.5)
NautilonUnderwaterEnginePower = "10" --10	(6 pre 3.97) 		Acceleration speed
NautilonUnderwaterEngineFalloff = "1" --0.7		1 = 100% so no fall of , 0.9 =90% means speed wil be 10% slower  => 45u

-- BIKE/NOMAD
NomadVehicleBoostForce = "480"-- 400
NomadVehicleBoostMaxSpeed = "40"-- 32
NomadVehicleBoostExtraMaxSpeedAir = "50" -- 40
NomadVehicleBoostSpeedFalloff = "3" -- 7.5
NomadVehicleBoostTime = "0.75" -- 0.5
NomadVehicleBoostRechargeTime = "2" -- 2
NomadVehicleJumpForce = 				"550"		--475		added by Xen0nex
NomadVehicleJumpAirControlForce =		"120"		--100		added by Xen0nex
NomadVehicleGravity = 					"15"		--17.5		added by Xen0nex

--MED_BUGGY/ROAMER
RoamerVehicleBoostForce = "360" --300
RoamerVehicleBoostMaxSpeed = "36" --30
RoamerVehicleBoostExtraMaxSpeedAir = "45"--40
RoamerVehicleBoostSpeedFalloff = "7.5" --10
RoamerVehicleBoostTime = "2.5" --1.5
RoamerVehicleBoostRechargeTime = "5" --3
RoamerVehicleJumpForce = 				"420"		--420		added by Xen0nex
RoamerVehicleJumpAirControlForce =		"75"		--75		added by Xen0nex
RoamerVehicleGravity = 					"27"		--20		added by Xen0nex

--WHEELEDBIKE/PILGRIM
PilgrimVehicleBoostForce = "720" --600
PilgrimVehicleBoostMaxSpeed = "50" --35
PilgrimVehicleBoostExtraMaxSpeedAir = "55" --40
PilgrimVehicleBoostSpeedFalloff = "5" --10
PilgrimVehicleBoostTime = "1" --0.6
PilgrimVehicleBoostRechargeTime = "2.5" --1.5
PilgrimVehicleJumpForce = 				"800"		--450		added by Xen0nex
PilgrimVehicleJumpAirControlForce =		"75"		--75		added by Xen0nex
PilgrimVehicleGravity = 				"40"		--20		added by Xen0nex

--TRUCK/COLOSSUUS
ColossusVehicleBoostForce = "320" --220
ColossusVehicleBoostMaxSpeed = "34" --30
ColossusVehicleBoostExtraMaxSpeedAir = "40" --40
ColossusVehicleBoostSpeedFalloff = "3" --5
ColossusVehicleBoostTime = "1.5" --1.25
ColossusVehicleBoostRechargeTime = "5" --5.5
ColossusVehicleJumpForce = 				"400"		--400		added by Xen0nex
ColossusVehicleJumpAirControlForce =	"50"		--50		added by Xen0nex
ColossusVehicleGravity = 				"20"		--20		added by Xen0nex

--SUBMARINE/NATILON
NautilonVehicleBoostForce = "1440" --900
NautilonVehicleBoostMaxSpeed = "40"--25
NautilonVehicleBoostExtraMaxSpeedAir = "16"--10
NautilonVehicleBoostSpeedFalloff = "5" --7.5
NautilonVehicleBoostTime = "2" --2.5			This value gets multiplied by ~5 byt the game for some reason
NautilonVehicleBoostRechargeTime = "3.3" --2.5
NautilonVehicleJumpForce = 				"1200"		--1200		added by Xen0nex
NautilonVehicleJumpAirControlForce =	"180"		--180		added by Xen0nex
NautilonVehicleGravity = 				"30"		--30		added by Xen0nex
NautilonVehicleGravityWater = 			"17.5"		--17.5		added by Xen0nex
--[[
--MECH														--Currently handled by GMechX in PTSd
MechVehicleBoostForce = "2250" --900
MechVehicleBoostMaxSpeed = "50"--25
MechVehicleBoostExtraMaxSpeedAir = "50"--10
MechVehicleBoostSpeedFalloff = "2.5" --7.5
MechVehicleBoostTime = "5" --2.5
MechVehicleBoostRechargeTime = "5" --2.5

MechSuitWalkingSpeed = "4"
MechSuitJPForce ="100"
MechSuitJPMaxSpeed = "50"
MechSuitJPMaxUpSpeed = "80"
MechSuitJPDrainRate = "0.40"
MechSuitJPFillRate = "0.60"
MechSuitLaserDamange = "350"
MechSuitCanonDamange = "2500"
]]
VehicleFuelRate = "0.6"					--0.4		(0.3)
--VehicleFuelRateSurvival = "0.6"		--0.8
VehicleBoostFuelRate = "2"				--2			(1)
VehicleBoostFuelRateSurvival = "2"		--4


-- HOVBERCraft is an unreleased vehcile this is NOT the Nomad
NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"] 			= ModName..GameVersion..".pak",
["MOD_DESCRIPTION"]			= Description,
["MOD_AUTHOR"]				= "Jackty89",			--Edited by Xen0nex
["NMS_VERSION"]				= GameVersion,
["EXML_CREATE"] = "FALSE",
["MODIFICATIONS"] 			=
	{
		{
			["MBIN_CHANGE_TABLE"] 	=
			{
				-- {
				-- 	["MBIN_FILE_SOURCE"] 	= GCTechnologyTablePath,
				-- 	["MXML_CHANGE_TABLE"] 	=
				-- 	{
				-- 		{
				-- 			["SPECIAL_KEY_WORDS"] = {"ID","MECH_LASER"},
				-- 			["PRECEDING_KEY_WORDS"] = {"StatBonuses","StatsTypes"},
				-- 			["VALUE_CHANGE_TABLE"] 	=
				-- 			{
				-- 				--LINE 18848
				-- 				{"Bonus", MechSuitLaserDamange}
				-- 			}
				-- 		},
				-- 		{
				-- 			["SPECIAL_KEY_WORDS"] = {"ID","MECH_GUN"},
				-- 			["VALUE_CHANGE_TABLE"] 	=
				-- 			{
				-- 				--Line 19093
				-- 				{"Bonus", MechSuitCanonDamange}
				-- 			}
				-- 		}
				-- 	}
				-- },
				{
					["MBIN_FILE_SOURCE"] 	= VehicleGlobalsPath,
					["MXML_CHANGE_TABLE"] 	=
					{
                        {
							["VALUE_CHANGE_TABLE"] 	=
							{
								--[[{"MechJetpackForce", MechSuitJPForce}, --Original 70
                                {"MechJetpackMaxSpeed", MechSuitJPMaxSpeed},
                                {"MechJetpackMaxUpSpeed", MechSuitJPMaxUpSpeed},
                                {"MechJetpackDrainRate", MechSuitJPDrainRate},
                                {"MechJetpackFillRate", MechSuitJPFillRate},]]
								{"VehicleFuelRate", VehicleFuelRate},
								--{"VehicleFuelRateSurvival", VehicleFuelRateSurvival},
								{"VehicleBoostFuelRate", VehicleBoostFuelRate},
								{"VehicleBoostFuelRateSurvival", VehicleBoostFuelRateSurvival}
							}
						},
                        --[[{
							["SPECIAL_KEY_WORDS"] = {"Name","MECH"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"TopSpeedForward", MechSuitWalkingSpeed}, 	-- Original "2"
								{"VehicleBoostForce", MechVehicleBoostForce},
								{"VehicleBoostMaxSpeed", MechVehicleBoostMaxSpeed},
								{"VehicleBoostExtraMaxSpeedAir", MechVehicleBoostExtraMaxSpeedAir},
								{"VehicleBoostSpeedFalloff", MechVehicleBoostSpeedFalloff},
								{"VehicleBoostTime", MechVehicleBoostTime},
								{"VehicleBoostRechargeTime", MechVehicleBoostRechargeTime}
							}
						},]]
                        {
							["SPECIAL_KEY_WORDS"] = {"Name","BIKE"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"TopSpeedForward", NomadSpeed}, 	-- Original "18"
                                {"TopSpeedReverse", NomadSpeed},
								{"VehicleBoostForce", NomadVehicleBoostForce},
								{"VehicleBoostMaxSpeed", NomadVehicleBoostMaxSpeed},
								{"VehicleBoostExtraMaxSpeedAir", NomadVehicleBoostExtraMaxSpeedAir},
								{"VehicleBoostSpeedFalloff", NomadVehicleBoostSpeedFalloff},
								{"VehicleBoostTime", NomadVehicleBoostTime},
								{"VehicleBoostRechargeTime", NomadVehicleBoostRechargeTime},
								{"VehicleJumpForce", NomadVehicleJumpForce},
								{"VehicleJumpAirControlForce", NomadVehicleJumpAirControlForce},
								{"VehicleGravity", NomadVehicleGravity}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","WHEELEDBIKE"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"TopSpeedForward", PilgrimSpeed}, 	-- Original "18"
                                {"TopSpeedReverse", PilgrimSpeed},
								{"VehicleBoostForce", PilgrimVehicleBoostForce},
								{"VehicleBoostMaxSpeed", PilgrimVehicleBoostMaxSpeed},
								{"VehicleBoostExtraMaxSpeedAir", PilgrimVehicleBoostExtraMaxSpeedAir},
								{"VehicleBoostSpeedFalloff", PilgrimVehicleBoostSpeedFalloff},
								{"VehicleBoostTime", PilgrimVehicleBoostTime},
								{"VehicleBoostRechargeTime", PilgrimVehicleBoostRechargeTime},
								{"VehicleJumpForce", PilgrimVehicleJumpForce},
								{"VehicleJumpAirControlForce", PilgrimVehicleJumpAirControlForce},
								{"VehicleGravity", PilgrimVehicleGravity}
							}
						},
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name","MED_BUGGY"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"TopSpeedForward", RoamerSpeed}, 	-- Original "16"
                                {"TopSpeedReverse", RoamerSpeed},
								{"VehicleBoostForce", RoamerVehicleBoostForce},
								{"VehicleBoostMaxSpeed", RoamerVehicleBoostMaxSpeed},
								{"VehicleBoostExtraMaxSpeedAir", RoamerVehicleBoostExtraMaxSpeedAir},
								{"VehicleBoostSpeedFalloff", RoamerVehicleBoostSpeedFalloff},
								{"VehicleBoostTime", RoamerVehicleBoostTime},
								{"VehicleBoostRechargeTime", RoamerVehicleBoostRechargeTime},
								{"VehicleJumpForce", RoamerVehicleJumpForce},
								{"VehicleJumpAirControlForce", RoamerVehicleJumpAirControlForce},
								{"VehicleGravity", RoamerVehicleGravity}
							}
						},
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name","TRUCK"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"TopSpeedForward", ColossusSpeed}, 	-- Original "12"
                                {"TopSpeedReverse", ColossusSpeed},
								{"VehicleBoostForce", ColossusVehicleBoostForce},
								{"VehicleBoostMaxSpeed", ColossusVehicleBoostMaxSpeed},
								{"VehicleBoostExtraMaxSpeedAir", ColossusVehicleBoostExtraMaxSpeedAir},
								{"VehicleBoostSpeedFalloff", ColossusVehicleBoostSpeedFalloff},
								{"VehicleBoostTime", ColossusVehicleBoostTime},
								{"VehicleBoostRechargeTime", ColossusVehicleBoostRechargeTime},
								{"VehicleJumpForce", ColossusVehicleJumpForce},
								{"VehicleJumpAirControlForce", ColossusVehicleJumpAirControlForce},
								{"VehicleGravity", ColossusVehicleGravity}
							}
						},
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name","SUBMARINE" },
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"UnderwaterEngineMaxSpeed", NautilonSpeed}, 	-- Original "22"
								{"TopSpeedForward", NautilonSpeed}, 	-- Original "22"
								{"UnderwaterEnginePower", NautilonUnderwaterEnginePower},
								{"UnderwaterEngineFalloff",  NautilonUnderwaterEngineFalloff},
								{"VehicleBoostForce", NautilonVehicleBoostForce},
								{"VehicleBoostMaxSpeed", NautilonVehicleBoostMaxSpeed},
								{"VehicleBoostExtraMaxSpeedAir", NautilonVehicleBoostExtraMaxSpeedAir},
								{"VehicleBoostSpeedFalloff", NautilonVehicleBoostSpeedFalloff},
								{"VehicleBoostTime", NautilonVehicleBoostTime},
								{"VehicleBoostRechargeTime", NautilonVehicleBoostRechargeTime},
								{"VehicleJumpForce", NautilonVehicleJumpForce},
								{"VehicleJumpAirControlForce", NautilonVehicleJumpAirControlForce},
								{"VehicleGravity", NautilonVehicleGravity},
								{"VehicleGravityWater", NautilonVehicleGravityWater}
							}
                        }
                    }
				}
            }
        }
    }
}