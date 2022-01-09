function data()
return 
	{ 
		id = "COPPER_ORE", name = _("Copper ore"), weight = 1000.0,
		order = 4,
		levelModels = { 
			MEDIUM4x1 = "industry/cargo/level/copper_ore_level_4x1.mdl", 
			MEDIUM2x1 = "industry/cargo/level/copper_ore_level_2x1.mdl"
		},
		discreteModels = { 
			SMALL = "industry/cargo/copper_ore_small.mdl", 
			BIG = "industry/cargo/copper_ore_big.mdl"
		},
	}
end
