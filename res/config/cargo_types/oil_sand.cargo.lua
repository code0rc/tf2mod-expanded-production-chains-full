function data()
return 
	{ 
		id = "OIL_SAND", 
		
		name = _("Oil sand"), weight = 1000.0,
		order = 4,
		levelModels = { 
			MEDIUM4x1 = "industry/cargo/level/oil_sand_level_4x1.mdl", 
			MEDIUM2x1 = "industry/cargo/level/oil_sand_level_2x1.mdl"
		},
		discreteModels = { 
			SMALL = "industry/cargo/oil_sand_small.mdl", 
			BIG = "industry/cargo/oil_sand_big.mdl"
		},
	}
end
