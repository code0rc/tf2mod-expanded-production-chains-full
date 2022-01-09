function data()
return 
	{ 
		id = "CONSTRUCTION_MATERIALS", 
		name = _("Construction material"), weight = 1000.0,
		
		order = 13,
		discreteModels = {
			SMALL = "industry/cargo/construction_materials_small.mdl",
			BIG = "industry/cargo/construction_materials_big.mdl"
		},
		townInput = {
			"INDUSTRIAL",
		},
	}
end
