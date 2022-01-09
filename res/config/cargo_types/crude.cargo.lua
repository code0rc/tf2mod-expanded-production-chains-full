function data()
return 
	{ 
		id = "CRUDE", name = _("Crude oil"), weight = 1000.0,
		order = 7,
		discreteModels = {
			SMALL = "industry/cargo/crude_small.mdl", 
			BIG = "industry/cargo/crude_big.mdl"
		},
	}
end
