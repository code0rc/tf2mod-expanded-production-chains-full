function data()
return 
	{ 
		id = "IRON_ORE", name = _("Iron ore"), weight = 1000.0,
		order = 4,
		levelModels = { 
			MEDIUM4x1 = "industry/cargo/level/iron_ore_level_4x1.mdl", 
			MEDIUM2x1 = "industry/cargo/level/iron_ore_level_2x1.mdl"
		},
		discreteModels = { 
			SMALL = "industry/cargo/iron_ore_small.mdl", 
			BIG = "industry/cargo/iron_ore_big.mdl"
		},
	}
end
