function data()
return
	{
		id = "WAR_MATERIAL", name = _("War material"), weight = 1000.0,
		order = 35,
		discreteModels = {
			SMALL = "industry/cargo/goods_small.mdl",
			BIG = "industry/cargo/goods_big.mdl"
		},
		townInput = {
			"INDUSTRIAL",
		},
	}
end
