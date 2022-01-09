function data()
return 
	{ 
		id = "GOLD_ORE", 
		
		name = _("Gold ore"), weight = 1000.0,
		order = 7,
		levelModels = { 
			MEDIUM4x1 = "industry/cargo/level/gold_ore_level_4x1.mdl", 
			MEDIUM2x1 = "industry/cargo/level/gold_ore_level_2x1.mdl"
		},		
		discreteModels = {
			SMALL = "industry/cargo/gold_ore_small.mdl",
			BIG = "industry/cargo/gold_ore_big.mdl"
		},
	}
end
