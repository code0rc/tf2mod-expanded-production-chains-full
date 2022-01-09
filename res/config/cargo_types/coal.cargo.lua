function data()
return 
	{ 
		id = "COAL", name = _("Coal"), weight = 1000.0,
		order = 3,
		levelModels = { 
			MEDIUM4x1 = "industry/cargo/level/coal_level_4x1.mdl", 
			MEDIUM2x1 = "industry/cargo/level/coal_level_2x1.mdl"
		},
		discreteModels = { 
			SMALL = "industry/cargo/coal_small.mdl",
			BIG = "industry/cargo/coal_big.mdl"
		},
	}
end
