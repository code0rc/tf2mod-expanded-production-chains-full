function data()
return
	{
		id = "ALCOHOL", name = _("Alcohol"), weight = 1000.0,
		order = 30,
		discreteModels = {
			SMALL = "industry/cargo/alcohol_small.mdl",
			BIG = "industry/cargo/alcohol_big.mdl"
		},
		townInput = {
			"INDUSTRIAL",
		},
	}
end
