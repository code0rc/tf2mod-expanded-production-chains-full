function data()
return
	{
		id = "CARTONS", name = _("Packaging carton"), weight = 1000.0,
		order = 32,
		discreteModels = {
			SMALL = "industry/cargo/goods_small.mdl",
			BIG = "industry/cargo/goods_big.mdl"
		},
		townInput = {
			"INDUSTRIAL",
			"COMMERCIAL"
		}
	}
end
