function data()
return 
	{ 
		id = "MACHINES", 
		name = _("Machines"), 
		weight = 1000.0,
		order = 14,
		discreteModels = {
			SMALL = "industry/cargo/machines_small.mdl",
			BIG = "industry/cargo/machines_big.mdl"
		},
		townInput = {
			"INDUSTRIAL",
		},
	}
end
