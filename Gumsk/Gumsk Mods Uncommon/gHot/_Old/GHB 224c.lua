
--Variables
--General
PoleSpacing = 900					--?? Original value "900"
HotspotsPerPoleMin = 1.9			--?? Original value "1.9"
HotspotsPerPoleMax = 3.8			--?? Original value "3.8"
SpacingSameCatMin = 10				--?? Original value "10"
SpacingDiffCatMaxOverlap = 150		--?? Original value "150"
OutputMultiplier = 1.0

Original_Hotspot_Array = {			-- This is for reference. Don't change it!
				{"Power",   "Mineral1",	"mineral2",	"Mineral3",	"Gas1",		"Gas2"},	--Type
				{1,			1,		 	1,		  	1,		 	1,			1}, 		--Probability
				{200,	  	190,		190,	  	190,	   	190,		190},	 	--MinRange??
				{250,	  	225,		225,	  	225,	   	225,		225},	 	--MaxRange?? Extraction radius?
				{10,		6,		 	6,		  	6,	     	20,			20}, 		--C-class probability
				{6,	  	  	4,		 	4,		  	4,	     	4,			4}, 		--B-class probability
				{2,	  	  	2,		 	2,		  	2,	     	2,			2}, 		--A-class probability
				{1,		  	1,			1,		  	1,		 	1,			1}, 		--S-class probability
				{150,	  	1.0,		1.0,	  	1.0,	    1.0,		1.0}, 		--C-class output
				{220,	  	1.5,		1.5,	  	1.5,	    1.5,		1.5}, 		--B-class output
				{250,  	  	2.0,		2.0,	  	2.0,	    2.0,		2.0}, 		--A-class output
				{300,		2.5,		2.5,	  	2.5,	    2.5,		2.5}, 		--S-class outpur
				{0.95,  	0.95,		0.95,	  	0.95,	    0.95,		0.95} 		--DiscoverThreshold??
			}

Preceding_Array = {"ProbabilityWeighting", "MinRange", "MaxRange", "ClassWeightings", "ClassWeightings", "ClassWeightings", "Classweightings", "ClassStrengths", "ClassStrengths", "ClassStrengths", "ClassStrengths", "DiscoveryDistanceThreshold"}

New_Hotspot_Array = {
				{"Power",	"Mineral1",	"mineral2", "Mineral3", "Gas1",		"Gas2"},	--Type
				{3,			3,			2,			1,			3,			2}, 		--Probability. Divide by total
				{200,		190,		190,		190,		190,		190}, 		--MinRange?? Min until another hotspot?
				{250,		225,		225,		225,		225,		225},	 	--MaxRange?? Extraction radius? Max distance to a new hotspot?
				{45,		45,			45,			45,			45,			45}, 		--C-class probability. Total = 100, but does not need to.
				{40,		40,			40,			40,			40,			40}, 		--B-class probability 
				{11,		11,			11,			11,			11,			11},		--A-class probability. 
				{4,			4,			4,			4,			4,			4}, 		--S-class probability. 
				{100,		0.5,		0.5,		0.5,		0.5,		0.5}, 		--C-class output. Units unknwon.
				{200,		1.0,		1.0,		1.0,		1.0,		1.0}, 		--B-class output
				{300,		2.0,		2.0,		2.0,		2.0,		2.0}, 		--A-class output
				{400,		3.0,		3.0,		3.0,		3.0,		3.0}, 		--S-class outpur
				{0.95,		0.95,		0.95,		0.95,		0.95,		0.95} 		--DiscoverThreshold??
			}

NMS_MOD_DEFINITION_CONTAINER = 
{
MOD_FILENAME	= "GHB 224c.pak", --The 'c' is for 'cleaned up!'
MOD_DESCRIPTION	= "Hotspot Balancing",
MOD_AUTHOR		= "Gumsk",
NMS_VERSION		= "2.24",
MODIFICATIONS	=
{{
["PAK_FILE_SOURCE"] = "",
MBIN_CHANGE_TABLE = 
{{
MBIN_FILE_SOURCE = "METADATA\SIMULATION\SCANNING\REGIONHOTSPOTSTABLE.MBIN",
EXML_CHANGE_TABLE = 
{
		{ 
			-- PRECEDING_KEY_WORDS = "esoteric",
			-- VALUE_CHANGE_TABLE =
			-- {
				-- {"Cheese","Cheddar"}	
			-- }
		}
},}},}}}

local Change_Table_Array = NMS_MOD_DEFINITION_CONTAINERMODIFICATIONS[1]MBIN_CHANGE_TABLE[1]EXML_CHANGE_TABLE
for i = 1,6 do
	for j = 1,12 do	
		local temp_table =
		{
			PRECEDING_KEY_WORDS = {tostring(Original_Hotspot_Array[1][i]), tostring(Preceding_Array[j])},
			VALUE_CHANGE_TABLE =
			{
				{tostring(Original_Hotspot_Array[j+1][i]), tostring(New_Hotspot_Array[j+1][i])}
			},
		}
		Change_Table_Array[#Change_Table_Array + 1] = temp_table
	end
end
