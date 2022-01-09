function data()
return 
	{ 
		id = "SAND", 
		
		name = _("Sand"), weight = 1000.0,
		order = 30,
		levelModels = { 
			MEDIUM4x1 = "industry/cargo/level/sand_level_4x1.mdl", 
			MEDIUM2x1 = "industry/cargo/level/sand_level_2x1.mdl"
		},
		discreteModels = {
			SMALL = "industry/cargo/sand_small.mdl",
			BIG = "industry/cargo/sand_big.mdl"
		},
	}
end
