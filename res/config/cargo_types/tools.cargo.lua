function data()
return 
	{ 
		id = "TOOLS", 
		name = _("Tools"), 
		weight = 1000.0,
		order = 16,
		discreteModels = {
			SMALL = "industry/cargo/tools_small.mdl",
			BIG = "industry/cargo/tools_big.mdl"
		},
		townInput = {
			"COMMERCIAL",
		},
	}
end
