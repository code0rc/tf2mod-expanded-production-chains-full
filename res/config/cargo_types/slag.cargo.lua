function data()
return 
	{ 
		id = "SLAG", 
		
		name = _("Slag"), weight = 1000.0,
		order = 7,
		levelModels = { 
			MEDIUM4x1 = "industry/cargo/level/slag_level_4x1.mdl", 
			MEDIUM2x1 = "industry/cargo/level/slag_level_2x1.mdl"
		},		
		discreteModels = {
			SMALL = "industry/cargo/slag_small.mdl",
			BIG = "industry/cargo/slag_big.mdl"
		},
	}
end
