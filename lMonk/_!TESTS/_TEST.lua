--[[-----------------------------------------
 snippets
-------------------------------------------]]

local rgbs = {

	-- {1, 0.20784314,0.3529412,0.49019608},
	-- {1, 0.101960786,0.15294118,0.2},
	-- {1, 0.753, 0.616, 0.441},
	-- {1, 0.481504, 0.644981, 0.492778},
	-- {1, 0.55866, 0.769517, 0.731638},
	-- {1, 0.548257, 0.649879, 0.743494},
	-- {1, 0.521638, 0.468532, 0.566914},
	-- {1, 0.70632, 0.548262, 0.649185},
	-- {1, 1.0, 1.0, 1.0},
	-- {1, 0.457249, 0.457249, 0.457249},
	-- {1, 0.64955, 0.373202, 0.354034},
	-- {1, 0.675676, 0.412316, 0.268444},
	-- {1, 0.791822, 0.642133, 0.332572},
	-- {1, 0.346972, 0.44052, 0.359445},
	-- {1, 0.301684, 0.444985, 0.447955},
	-- {1, 0.323133, 0.391086, 0.522305},

	{1, 0.258, 0.66, 0.322},
	{1, 0.039, 0.349, 0.101},
	{1, 0.308, 0.729, 0.532},
	{1, 0.998, 0.917, 0.563},
	{1, 0.739, 0.793, 0.456},
}

local function rgb2hex(c)
	local h = ''
	for i=1, #c do h = h..string.format('%02X', math.floor(c[i] * 255 + 0.5)) end
	return h
end

-- for i,r in ipairs(rgbs) do
	-- if (i-1) % 5 == 0 then print('\n') end
	-- print(rgb2hex(r))
-- end

-- local str = [[
  -- <!-- <this is > 5k4 -->
  -- <my comment > e2e
  -- <filtering > m4m
  -- <!-- < pattern> 1o2 -->
-- ]]
-- local match1 = '()<(.-)>'
-- local match2 = '<!%-%-[ \t\n]-<(.-)>'
-- local match3 = '(<!%-%-)[ \t]-<(.-)>'

src = {
	'RECIPE_20',
	'RECIPE_21',
	'RECIPE_22',
	'RECIPE_23',
	'RECIPE_24',
	'RECIPE_251',
	'RECIPE_26',
	'RECIPE_27',
	'RECIPE_28',
	'RECIPE_29',
}
for _,s in ipairs(src) do
	if s:match('RECIPE_2%d') then
		print(s)
	end
end
