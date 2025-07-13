-- Perfect Upgrade Modules
-- Author: DarkScythe
-- Date Created: Jul 18, 2022
-- Last Updated: Sep 02, 2023
--------------------------------------------------------------------------------
modName		= "PerfectUpgradeModules"
batchName	= ""
modAuthor	= "DarkScythe"
modMaint	= "DarkScythe"
modDesc		= "Overrides all upgrade modules to have the best possible vanilla stats, with optional custom power scaling"
modVer		= "1.1"
scriptVer	= "a"
gameVer		= "4.47"

--[[
Enter a number here to set the approximate Power Scaling of upgrade module stats
--------------------------------------------------------------------------------
Default is 1, meaning 1x, or 100% of base/vanilla stats with no change

Increase or decrease the value for desired effects:
1.25 would be roughly a 25% increase, 2 would be roughly doubling the effects
0.75 would be roughly a 25% decrease, 0.5 would be roughly halving the effects

Most of the values are actually multipliers, so they will be scaled exponentially
This means that the more extreme the value, the further off the final value will
be from intended/expected; Being conservative with this value is recommended

Going beyond 2-3 will start resulting in amusingly extreme values
Minimum value is 0.1; any lower and you might as well not equip upgrades at all
YOU HAVE BEEN WARNED! USE EXTREME VALUES AT YOUR OWN RISK!
--]]
powerScale		= 1

--[[
Optional settings for tweaking Technology Upgrade Module Overloading
--------------------------------------------------------------------------------
Note that enabling this setting will cause the mod to edit/load an additional
global file, which has a high chance of conflicting with other mods

No change will be made if this remains false / turned off
--]]
overloadTech	= false
maxTechStack	= 6		-- Default 3

---- **** END OF USER-ADJUSTABLE SETTINGS **** ----
-----------------------------------------------------------------------------
---- Alter following code only if this mod is no longer being maintained ----
-----------------------------------------------------------------------------

-- AMUMSS Input Request Definitions
-- Using the values defined in the variables above as the fallback
overrideScale	= {powerScale,
[[	Input any number to scale the power of all upgrade modules
	Press ENTER without an answer to skip and use the CURRENT values
	Default = 1 | Current = >> ]] .. powerScale .. [[ << | Minimum = 0.1
]]}

getOverload		= {overloadTech,
[[	Would you like to adjust the number of tech upgrades until overload?
	Be aware that this may cause conflicts with other mods
	Default = N | Current = >> ]] .. (overloadTech and "Y" or "N") .. [[ <<
]]}

getMaxStack		= {maxTechStack,
[[	Input the maximum installable upgrade modules before they overload
	Default = 3 | Current = >> ]] .. maxTechStack .. [[ <<
]]}

-- Allow overrides to avoid needing to make any changes to the Lua at all
powerScale		= GUIF(overrideScale,	15)
overloadTech	= GUIF(getOverload,		10)
maxTechStack	= overloadTech and GUIF(getMaxStack, 10) or maxTechStack

-- Safety checks
assert(type(powerScale) == "number" and powerScale >= 0.1,
	"Invalid Power Scale defined: Must be a numeric value of at least 0.1")
assert(type(maxTechStack) == "number" and maxTechStack >= 1,
	"Invalid tech overload cap defined: Must be a positive integer")

--[[
These are the files being used by this mod.
Adjust these if the filenames or directory structures ever change,
and the mod is no longer being maintained.

This mod will conflict with any other mod that alters these same files.
A spot for merging in code from conflicting mods is provided below.
Note that ONLY code from AMUMSS' MXML_CHANGE_TABLE blocks should be pasted there.

One file is optional, and should only be active (and conflict with other mods)
if its associated optional toggle is enabled; Otherwise it should not load.
--------------------------------------------------------------------------------
Main file required by this mod
This file should contain the data for every procedurally-generated upgrade module

Theoretically, this should also pick up new modules added by other mods if
combined after those other mods
--]]
upgradeModTable	= "METADATA\REALITY\TABLES\NMS_REALITY_GCPROCEDURALTECHNOLOGYTABLE.MBIN"

-- Optional file that should only be used when the overloadTech option is enabled
gameGlobalFile	= "GCGAMEPLAYGLOBALS.GLOBAL.MBIN"

-----------------------------------------------------------------------------
--
-- Begin Definition of Variables and Data
--
-----------------------------------------------------------------------------
--[[
All of the following phrases/keywords will come from GCPROCEDURALTECHNOLOGYTABLE
Edit these phrases here if HG ever changes them in the future, and they will be
used automatically in the script
--]]

-- The curve might be optional considering there will only be a single value the
-- game can choose, but HG uses NoWeighting anytime they also only had one value
curveTarget	= "NoWeighting"

-- This phrase is used to find where each stat is being defined/named
statKey		= "StatsType"

-- These two are the phrases defining the number of STAT LINES for each module
lineMin		= "NumStatsMin"
lineMax		= "NumStatsMax"

-- These two are the phrases defining the VALUES of the stats themselves
statMin		= "ValueMin"
statMax		= "ValueMax"

--[[
Define stat scaling groups by sorting all unique stat lines in the source file
------------------------------------------------------------------------------
There are three general scaling pools that various stat lines can fall into:
A: Multipliers that end up having better effects when lower/closer to zero
B: Multipliers that have better effects when larger/farther from zero
C: Flat values like damage numbers that can be directly multiplied

Of course, HG being HG, there are inconsistencies in how some stats are valued
As such, there are two additional "Special" pools to hold such exceptions

Simply move or add new lines into the appropriate pools, and the script should
handle the rest
------------------------------------------------------------------------------

The first pool is for stats that are better when lower, meaning the MINIMUM value
results in a more preferable in-game stat/effect

These are usually values which are multipliers less than 1
After scaling, the MINIMUM values here will be copied to also be the maximum
Since these are multipliers, they will be scaled exponentially

Example: Value 0.85 gives -15% in game for something like cooldowns
0.85 * 2 = 1.7 which would be +70% in game, making it worse
0.85 / 2 = 0.425 which would be -57.5% in game, far too huge a reduction
0.85 ^ 2 = 0.7225, or -27.75% in game, much closer to expected "doubled" power

Only the name of the stat line is needed here, and the script will match all
instances of it in every module
--]]
scaleLower	= {
	-- These lines have their "better" stats set as minimum values
	"Weapon_Laser_Mining_Speed",
	"Weapon_Laser_ReloadTime",
	"Weapon_Projectile_ReloadTime",
	"Weapon_Laser_ChargeTime",
	"Weapon_ChargedProjectile_ChargeTime",
	"Suit_Jetpack_Drain",
	"Suit_DamageReduce_Radiation",
	"Suit_DamageReduce_Toxic",
	"Suit_DamageReduce_Cold",
	"Suit_DamageReduce_Heat",
	"Ship_PulseDrive_MiniJumpFuelSpending",
	"Vehicle_GunHeatTime",
	"Vehicle_GunRate",
	"Vehicle_LaserHeatTime",
	"Vehicle_EngineFuelUse",
}

--[[
This pool handles exceptions to the two main exponential scaling groups

These lines are multipliers which offer "better" stats as they get even lower,
and would normally be in the above group instead

However, due to inconsistencies by HG, these stat lines only follow the rule of
"minimum value is lower than maximum" for specific upgrade types, and they have
inverted the min/max values for another upgrade type using the same stat, which
will be placed in another "Special" pool below

To handle these exceptions, we must also define the upgrade group that follows
this pool's rules

The appropriate keyword to use for the upgrade group is the value of the field
called "Name" under the upgrade module, NOT the "ID" of the individual module
--]]
lowSpecial	= {
	-- These have their "better" stats set as minimum values
	{"UP_SHOT",			"Weapon_Projectile_BurstCooldown"},
	{"UP_LAUNCHER",		"Ship_Launcher_TakeOffCost"},
}

--[[
On the other end, these next pools are all for stats which offer better stats
when their values scale higher, which includes most of the stats in the game

These particular ones will usually be values which are multipliers greater than 1
After scaling, the MAXIMUM values here will be copied to also be the minimum
Since these are multipliers, they will be scaled exponentially

Example: Value 1.1 gives +10% in game
2 * 1.1 = 2.2 would be +120% in game instead of +20%
1.1 ^ 2 = 1.21 which is +21% in game, a much closer fit to "doubled power"

As before, only the name of the stat line itself is necessary here
--]]
scaleHigher	= {
-- These lines have their "better" stats set as maximum values
	"Weapon_Laser_HeatTime",
	"Weapon_Laser_Drain",
	"Weapon_Scan_Radius",
	"Weapon_Projectile_Rate",
	"Weapon_Grenade_Radius",
	"Suit_Energy_Regen",
	"Suit_Protection_HeatDrain",
	"Suit_Protection_ColdDrain",
	"Suit_Protection_RadDrain",
	"Suit_Protection_ToxDrain",
	"Suit_Stamina_Recovery",
	"Suit_Jetpack_Refill",
	"Suit_Jetpack_Ignition",
	"Ship_Boost",
	"Ship_BoostManeuverability",
	"Ship_Maneuverability",
	"Ship_Weapons_Guns_Rate",
	"Ship_Weapons_Guns_HeatTime",
	"Ship_Weapons_Lasers_HeatTime",
	"Vehicle_EngineTopSpeed",
	"Ship_Launcher_AutoCharge",
	"Freighter_Fleet_Speed",
	"Freighter_Fleet_Combat",
	"Freighter_Fleet_Trade",
	"Freighter_Fleet_Explore",
	"Freighter_Fleet_Mine",

	-- This stat is better when lower, but HG swapped its min/max, so it's here
	"Freighter_Fleet_Fuel",
}

--[[
This pool handles exceptions to the main exponential scaling groups above, but in
the other direction

These lines should contain values whose "better" values are set as their maximum
regardless of whether the raw values end up higher or lower, but can't be placed
in the above scaleHigher table due to HG not being consistent with the rule for
"higher stat is the maximum value" or the lines where the smaller value is better
yet HG placed it as the maximum instead of the minimum

Lines set here will usually have an accompanying line in the lowSpecial table above
to highlight HG's inconsistency at setting stat values for different groups

The appropriate keyword to use for the upgrade group is the value of the field
called "Name" under the upgrade module, NOT the "ID" of the individual module
--]]
highSpecial	= {
	-- These lines have their "better" stats set as maximum values
	{"UP_BOLT",			"Weapon_Projectile_BurstCooldown"},
	{"AP_LAUNCHER",		"Ship_Launcher_TakeOffCost"},
}

--[[
This last pool is the most straightforward one:
These stats are the ones that contain flat values like Hyperdrive Distance
which can be directly multiplied with powerScale, and the better stats are set
as their maximum values

After scaling, the MAXIMUM values here will be copied to also be the minimum

Example: Value 50 gives +5000% in game
50 ^ 2 = 2500 which would be +250,000% in game, which is way too high
50 * 2 = 100 which is +10,000%, the expected value for "doubled power"

As with the other pools, only the name of the stat line is necessary here
--]]
scaleLinear	= {
	-- These lines have their "better" stats set as maximum values
	"Weapon_Scan_Discovery_Creature",
	"Weapon_Scan_Discovery_Flora",
	"Weapon_Scan_Discovery_Mineral",
	"Weapon_Projectile_Damage",
	"Weapon_Projectile_ClipSize",
	"Weapon_Projectile_BurstCap",
	"Weapon_Grenade_Damage",
	"Weapon_Grenade_Bounce",
	"Weapon_Grenade_Speed",
	"Weapon_Laser_Damage",
	"Weapon_Projectile_MaximumCharge",
	"Weapon_ChargedProjectile_ExtraSpeed",
	"Suit_Energy",
	"Suit_Jetpack_Tank",
	"Suit_Stamina_Strength",
	"Suit_Armour_Shield_Strength",
	"Suit_Armour_Health",
	"Suit_Underwater",
	"Suit_Protection_Radiation",
	"Suit_Protection_Toxic",
	"Suit_Protection_Cold",
	"Suit_Protection_Heat",
	"Ship_Hyperdrive_JumpDistance",
	"Ship_Hyperdrive_JumpsPerCell",
	"Ship_Armour_Shield_Strength",
	"Ship_Weapons_Guns_Damage",
	"Ship_Weapons_Lasers_Damage",
	"Vehicle_GunDamage",
	"Vehicle_LaserDamage",
	"Vehicle_BoostSpeed",
	"Vehicle_BoostTanks",
	"Vehicle_SubBoostSpeed",
	"Ship_Weapons_ShieldLeech",
	"Freighter_Hyperdrive_JumpDistance",
	"Freighter_Hyperdrive_JumpsPerCell",
}

--[[
Any stat lines not in any of these tables (for example, new lines/modules added
by HG in the future, or ones added by other mods) will be assumed to have its
"better" value set as MAXIMUM, and the script will simply copy that over its
minimum value without any scaling

To provide the benefits of scaling (if desired) or if the "better" value is
actually the minimum, they will need to be added into one of the above stat
scaling pools, and this mod recompiled
--]]

-----------------------------------------------
---- BEGIN MAIN AMUMSS MOD CONTAINER TABLE ----
-----------------------------------------------
-- This is still just a Lua table at its core, so you can add to it later
NMS_MOD_DEFINITION_CONTAINER	= {
	MOD_FILENAME		= table.concat({"__", modName, "_v", modVer, ".", gameVer, scriptVer, ".pak"}),
	MOD_BATCHNAME		= batchName ~= "" and (batchName .. ".pak") or nil,
	MOD_DESCRIPTION		= modDesc,
	MOD_AUTHOR			= modAuthor,
	LUA_AUTHOR			= modAuthor,
	MOD_MAINTENANCE		= modMaint,
	NMS_VERSION			= gameVer,

	-- Actual mod container
	MODIFICATIONS	= {
		{
			MBIN_CHANGE_TABLE	= {
				{
					-- Modding GCPROCEDURALTECHNOLOGYTABLE
					MBIN_FILE_SOURCE	= upgradeModTable,
					--[[
					Since this table should only contain upgrade modules,
					we can just apply these next changes across the entire file
					without needing to look for specific modules
					--]]
					MXML_CHANGE_TABLE	= {
						{
							--[[
							We are using Lua Pattern Matching syntax here inside
							the curly braces to find all instances of "MinIs..."
							and "MaxIs...", avoiding entries that are already
							"NoWeighting"
							--]]
							VALUE_MATCH		= "{^M[ai][nx]Is[%a]+$}",
							REPLACE_TYPE	= "ALL",
							-- Change everything matched above to the preferred curve
							VCT	= {
								{"WeightingCurve", curveTarget},
							},
						},
						{
							--[[
							Start changing stat values now, beginning with the
							number of stat LINES each module can roll
							--]]
							MATH_OP			= "*F:" .. lineMax,
							REPLACE_TYPE	= "ALL",
							--[[
							Change the MIN stat lines to match MAX * 1
							This will set every module to the maximum number
							of vanilla stat lines possible regardless of scaling
							--]]
							VCT	= {
								{lineMin, 1},
							},
						},
						-----------------------------------------------------------------------
						---- Merge additional changes to GCPROCEDURALTECHNOLOGYTABLE below ----
						-----------------------------------------------------------------------
						-- Note that any stat values merged here will be modified again later

					}
				},
			}
		},
	}
}
------------------------------------------------
---- END OF MAIN AMUMSS MOD CONTAINER TABLE ----
------------------------------------------------

--[[
With the global changes set, we now need to handle all of the individual stats
The following blocks will sort through the stat pools defined above and
add the appropriate entries into the AMUMSS mod container table above
--]]

----------------------------------------------------
-- Begin Lua functions for scaling and setting stats
-- Do not modify unless you know what you are doing
----------------------------------------------------

-- Define a variable pointing to the specific place in the AMUMSS table we want
-- We will be referencing this throughout this section to add entries to it
statModTable = NMS_MOD_DEFINITION_CONTAINER.MODIFICATIONS[1].MBIN_CHANGE_TABLE[1].MXML_CHANGE_TABLE

-- This function will go through each of the stat pool tables and create a table
-- with the structure expected by AMUMSS
local function processStatTable(outputTable, inputTable)
	-- Skip processing if the provided stat table is empty for some reason
	if #inputTable > 0 then
		-- Check to see if it is one of the "Special" tables
		local isException = type(inputTable[1]) == "table"

		for i = 1, #inputTable do
			if isException then
				-- If it is a "Special" table, we need to add more information
				table.insert(inputTable[i], 1, "Name")
				table.insert(inputTable[i], 3, statKey)
			end

			-- Add the processed line of data to the output table
			outputTable[#outputTable + 1] = isException and inputTable[i] or {statKey, inputTable[i]}
		end
	end
end

-- This function will take all the data after processing and use it to form
-- a table entry in the format AMUMSS needs
-- Returns a table for use at the end; Does not add the table to AMUMMS itself
local function createScalerEntry(scaleFunc, statSrc, statRepl, statSKWTable)
	-- Temporary table for building out an AMUMSS-compatible block
	local tableEntry = {}

	-- Start filling it in with these lines that will always be required
	-- The scaling formula to be used should be passed in as the first argument
	-- The stat to be used with the formula to calculate an output is the second
	tableEntry.MATH_OP			= scaleFunc .. statSrc
	tableEntry.REPLACE_TYPE		= "ALL"
	tableEntry.ITF				= "FORCE"
	tableEntry.VCT				= {
		-- The stat being replaced with the calculated output is the third argument
		-- The fourth argument is a stat table, and is OPTIONAL
		-- If one is provided, we use the powerScale to calculate the final value
		-- If one is NOT provided, then we default to a value of 1 (no scaling)
		{statRepl, statSKWTable ~= nil and powerScale or 1}
	}

	-- If a stat table is provided, we need to add more instructions for AMUMSS
	if statSKWTable then
		-- Use the stat table as keywords for searching with
		tableEntry.FSKWG		= statSKWTable
		tableEntry.SECTION_UP	= 1

		-- If powerScale is anything besides the default of 1, we need to make
		-- sure we also change the source stat to match the one that was replaced
		-- Otherwise, we can omit this entirely for a bit of efficiency gains
		if powerScale ~= 1 then
			tableEntry.VCT[#tableEntry.VCT + 1] = {statSrc, powerScale}
		end
	end

	-- Finally, return the completed table for use
	return tableEntry
end

--[[
Begin processing with the stats that prefer the lower/minimum values

This IF condition is not strictly necessary, but we are going to be re-using
the temporary table repeatedly, so we're leveraging the block to restrict the
table's scope to prevent issues with old data potentially causing problems
--]]
if #scaleLower > 0 or #lowSpecial > 0 then
	local statLineTable		= {}
	-- Since we are going to replace the MAX with the MIN which comes before it
	-- we need to set the "fetch backward" flag for AMUMSS here
	local scaleDownFormula	= "^FB:"

	-- Call the function to process the data from the scaling pool tables
	processStatTable(statLineTable, scaleLower)
	processStatTable(statLineTable, lowSpecial)

	-- Now that the temporary table has all the data, we can add the entries
	-- into the AMUMSS table for execution by calling our entry creator function
	-- Scaling down using MIN to replace MAX for all lines in our statline table
	statModTable[#statModTable + 1] = createScalerEntry(scaleDownFormula, statMin, statMax, statLineTable)
end

--[[
Next, we'll process the stats that prefer higher/maximum values, and are also
largely multipliers that need to be increased exponentially

Again, the IF condition is not strictly necessary, but is being used here to
prevent variable scoping issues
--]]
if #scaleHigher > 0 or #highSpecial > 0 then
	local statLineTable		= {}
	-- For this one, we are replacing MIN with the MAX which comes after it
	-- so we do not need the "fetch backward" flag for AMUMSS
	local scaleUpFormula	= "^F:"

	-- Call the function to process the data from the scaling pool tables
	processStatTable(statLineTable, scaleHigher)
	processStatTable(statLineTable, highSpecial)

	-- Add entries into the AMUMSS table, again using our entry creator function
	-- Scaling up using MAX to replace MIN for all lines in our statline table
	statModTable[#statModTable + 1] = createScalerEntry(scaleUpFormula, statMax, statMin, statLineTable)
end

--[[
We now process the last batch of stats from the Linear scaling pool
These should also prefer higher/maximum values, but can't be scaled exponentially
or else their values become ridiculously large

As usual, this IF condition is not necessary, but is being used to control scope
--]]
if #scaleLinear > 0 then
	local statLineTable		= {}
	-- Similar to above, we will be replacing MIN with the MAX which comes after
	-- so "fetch backward" flag is not needed, but using multiplication instead
	local scaleFlatFormula	= "*F:"

	-- Call the function to process the data from the scaling pool table
	processStatTable(statLineTable, scaleLinear)

	-- Add entries into the AMUMSS table using our entry creator function
	-- Flat scaling using MAX to replace MIN for all lines in our statline table
	statModTable[#statModTable + 1] = createScalerEntry(scaleFlatFormula, statMax, statMin, statLineTable)
end

--[[
Finally, we have a "sanity check" / backup entry added to the AMUMSS table

This is outside of any conditions, so it should always be added, and should
always be added at the very end of the table after all the other sections have
run so that we avoid messing with their values

This also helps to pick up any new/unknown stat lines that weren't explicitly
added into the various pools, which allows this mod to continue functioning in
a basic capacity automatically even if new mods are added

As a safeguard, these lines will be assumed that their MAX value is the better
of the two options, and we will NOT scale these values at all

Any new lines MUST be explicitly/manually added into the scaling pools above in
order to be scaled
--]]

-- No scaling, and simply copying MAX into the MIN
-- Lack of the optional fourth argument forces the function to apply the changes
-- to every stat in every module across the entire file
statModTable[#statModTable + 1] = createScalerEntry("*F:", statMax, statMin)

--[[
With the General Inventory being removed beginning with the NMS v4.0 update,
an optional toggle has been added to allow users to install the 6 techs they had
before the update, when split between tech and general inventories

If the option is enabled, we need to add a new entry into AMUMSS for processing,
otherwise we can skip this block entirely and avoid conflicts with this file

Space for merging into GCGAMEPLAYGLOBALS is available below, but is unnecessary
unless overloadTech is enabled
--]]
if overloadTech then
	local addExtraTable = NMS_MOD_DEFINITION_CONTAINER.MODIFICATIONS[1].MBIN_CHANGE_TABLE
	addExtraTable[#addExtraTable + 1] = {
		MBIN_FS = gameGlobalFile,
		EXML_CT = {
			{
				VCT = {
					{"MaxNumSameGroupTech", math.floor(maxTechStack)},
				},
			},
			-------------------------------------------------------------
			---- Merge additional changes to GCGAMEPLAYGLOBALS below ----
			-------------------------------------------------------------

		}
	}
end

------------------------
-- Main Script Completed
------------------------

--[[
-- Add a third dash to the beginning of the PREVIOUS line to enable this block
------------------------------------------------------------------------------
-- This is AFTER the script has completed updating all stat values
-- Use this block for changes that should not be adjusted, or for
-- overriding values that have already been changed by this script

-- NOTE:
-- The v4.30 "Singularity" Update buffed Neutron Cannon upgrades
-- Unfortunately, HG forgot/overlooked the X-class Neutron Cannon upgrades
-- As a result, Neutron Cannon X-class upgrades are currently worse than S-class
-- This is an OPTIONAL override with some arbitrary values to make them better
-- Will be unnecessary whenever HG fixes this officially (still borked in v4.40)
-- Change the numerical values below as desired (ChargeTime is better when lower)
-- Additional overrides can be added to any modules by following the same pattern

-- To scale these, use "lin" if the stat name appears in the scaleLinear pool above
-- Use "exp" if they appear in any other pool, or omit entirely to force hardcoding
overrideStats = {
	{"UP_CANNX",	"Weapon_Projectile_Damage",				20,		"lin"},
	{"UP_CANNX",	"Weapon_ChargedProjectile_ExtraSpeed",	30,		"lin"},
	{"UP_CANNX",	"Weapon_ChargedProjectile_ChargeTime",	0.45,	"exp"},
}

-- If the above Override Table is not empty, we'll process its entries
if #overrideStats > 0 then
	for i = 1, #overrideStats do
		-- We need to insert the necessary keywords for AMUMSS' SKW to function
		table.insert(overrideStats[i], 1, "ID")
		table.insert(overrideStats[i], 3, statKey)

		-- Cache the last two parameters we'll need to figure out new stat values
		-- Not strictly necessary, but makes the next sections far easier to read
		local statVal	= overrideStats[i][5]
		local scaling	= overrideStats[i][6]

		-- If powerScale is changed, then we need to scale the overrides too
		-- Because this override pool may be a mix of stats with different scaling,
		-- we can't re-use the createScalarEntry() function earlier in the script
		if powerScale ~= 1 then
			-- However, we only check for an explicit scaling parameter
			-- This allows for non-scaling hardcoded entries if the last
			-- parameter is left blank/empty
			if scaling == "lin" then
				statVal = statVal * powerScale
			elseif scaling == "exp" then
				statVal = statVal ^ powerScale
			end
		end

		-- Begin adding entries for AMUMSS to process
		statModTable[#statModTable + 1] = {
			SKW				= {table.unpack(overrideStats[i], 1, 4)},
			SECTION_UP		= 1,
			REPLACE_TYPE	= "ALL",
			ITF				= "FORCE",
			VCT				= {
				{statMin,	statVal},
				{statMax,	statVal},
			},
		}
	end
end
--]]

--[[
-- Add a third dash to the beginning of the PREVIOUS line to enable this block
------------------------------------------------------------------------------
-- As before, this is AFTER the script has completed updating all stat values
-- INCLUDING the overrides set directly above this block
-- Use this block for any additional changes necessary, such as the addition
-- of new Upgrade Modules, or to add/remove stats, to merge another mod, etc.
-- Multiple blocks may be needed (just copy/paste them sequentially for each action)
statModTable[#statModTable + 1] = {
	-----------------------------------------------------------------------
	---- Merge additional changes to GCPROCEDURALTECHNOLOGYTABLE below ----
	-----------------------------------------------------------------------
	-- This block must be enabled, as explained above, to work

}
--]]