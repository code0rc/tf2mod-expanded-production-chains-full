function data()
return 
	{ 
		id = "LUBRICANTS", 
		name = _("Lubricants"),
		weight = 1000.0,
		order = 15,
		discreteModels = {
			SMALL = "industry/cargo/lubricants_small.mdl",
			BIG = "industry/cargo/lubricants_big.mdl"
		},
		townInput = {
			"INDUSTRIAL",
		},
	}
end
