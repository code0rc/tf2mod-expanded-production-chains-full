function data()
    return {
        info = {
            minorVersion = 3,
            severityAdd = "NONE",
            severityRemove = "WARNING",
            name = _("Expanded Production Chains"),
            description = _(
                "Adds cargo types and industries available throughout the campaign into free play and adds some completely new production chains."),
            tags = {"Industry", "Cargo", "Script Mod"},
            authors = {{
                name = "greenvbuser",
                role = "CREATOR"
            }}
        },

        runFn = function(settings)
            addModifier("loadConstruction", constructionCallback)
            addModifier("loadModel", function(fileName, data)
                if (string.find(fileName, "vehicle") == nil) then
                    return data
                end
                if (data.metadata) then
                    if (data.metadata.transportVehicle) then
                        if (data.metadata.transportVehicle.carrier) then
                            if (data.metadata.transportVehicle.compartments) then
                                for i = 1, #data.metadata.transportVehicle.compartments do
                                    local foundFoodCapacity = 0
                                    local foundFoodCargobay = null
                                    local foundGoodsCapacity = 0
                                    local foundGoodsCargobay = null
                                    local foundConstructionCapacity = 0
                                    local foundConstructionCargobay = null
                                    local foundIronOreCapacity = 0
                                    local foundIronOreCargobay = null
                                    local foundOilCapacity = 0
                                    local foundOilCargobay = null
                                    for j = 1, #data.metadata.transportVehicle.compartments[i] do
                                        for k = 1, #data.metadata.transportVehicle.compartments[i][j] do
                                            if (string.upper(data.metadata.transportVehicle.compartments[i][j][k].type) ==
                                                "FOOD") then
                                                foundFoodCapacity =
                                                    data.metadata.transportVehicle.compartments[i][j][k].capacity
                                                foundFoodCargobay =
                                                    data.metadata.transportVehicle.compartments[i][j][k].cargoBay
                                            elseif (string.upper(
                                                data.metadata.transportVehicle.compartments[i][j][k].type) == "GOODS") then
                                                foundGoodsCapacity =
                                                    data.metadata.transportVehicle.compartments[i][j][k].capacity
                                                foundGoodsCargobay =
                                                    data.metadata.transportVehicle.compartments[i][j][k].cargoBay
                                            elseif (string.upper(
                                                data.metadata.transportVehicle.compartments[i][j][k].type) ==
                                                "CONSTRUCTION_MATERIALS") then
                                                foundConstructionCapacity =
                                                    data.metadata.transportVehicle.compartments[i][j][k].capacity
                                                foundConstructionCargobay =
                                                    data.metadata.transportVehicle.compartments[i][j][k].cargoBay
                                            elseif (string.upper(
                                                data.metadata.transportVehicle.compartments[i][j][k].type) == "IRON_ORE") then
                                                foundIronOreCapacity =
                                                    data.metadata.transportVehicle.compartments[i][j][k].capacity
                                                foundIronOreCargobay =
                                                    data.metadata.transportVehicle.compartments[i][j][k].cargoBay
                                            elseif (string.upper(
                                                data.metadata.transportVehicle.compartments[i][j][k].type) == "OIL") then
                                                foundOilCapacity =
                                                    data.metadata.transportVehicle.compartments[i][j][k].capacity
                                                foundOilCargobay =
                                                    data.metadata.transportVehicle.compartments[i][j][k].cargoBay
                                            end
                                        end
                                    end
                                    if (foundFoodCapacity > 0) then
                                        table.insert(data.metadata.transportVehicle.compartments[i], {{
                                            type = "LIVESTOCK",
                                            capacity = foundFoodCapacity,
                                            cargoBay = foundFoodCargobay
                                        }})
                                        table.insert(data.metadata.transportVehicle.compartments[i], {{
                                            type = "FISH",
                                            capacity = foundFoodCapacity,
                                            cargoBay = foundFoodCargobay
                                        }})
                                        table.insert(data.metadata.transportVehicle.compartments[i], {{
                                            type = "MEAT",
                                            capacity = foundFoodCapacity,
                                            cargoBay = foundFoodCargobay
                                        }})
                                        table.insert(data.metadata.transportVehicle.compartments[i], {{
                                            type = "COFFEE_BERRIES",
                                            capacity = foundFoodCapacity,
                                            cargoBay = foundFoodCargobay
                                        }})
                                        table.insert(data.metadata.transportVehicle.compartments[i], {{
                                            type = "COFFEE",
                                            capacity = foundFoodCapacity,
                                            cargoBay = foundFoodCargobay
                                        }})
                                        table.insert(data.metadata.transportVehicle.compartments[i], {{
                                            type = "ALCOHOL",
                                            capacity = foundFoodCapacity,
                                            cargoBay = foundFoodCargobay
                                        }})
                                        table.insert(data.metadata.transportVehicle.compartments[i], {{
                                            type = "FRUIT",
                                            capacity = foundFoodCapacity,
                                            cargoBay = foundFoodCargobay
                                        }})
                                        table.insert(data.metadata.transportVehicle.compartments[i], {{
                                            type = "GRAPES",
                                            capacity = foundFoodCapacity,
                                            cargoBay = foundFoodCargobay
                                        }})
                                    end
                                    if (foundGoodsCapacity > 0) then
                                        table.insert(data.metadata.transportVehicle.compartments[i], {{
                                            type = "PAPER",
                                            capacity = foundGoodsCapacity,
                                            cargoBay = foundGoodsCargobay
                                        }})
                                        table.insert(data.metadata.transportVehicle.compartments[i], {{
                                            type = "WAR_MATERIAL",
                                            capacity = foundGoodsCapacity,
                                            cargoBay = foundGoodsCargobay
                                        }})
                                        table.insert(data.metadata.transportVehicle.compartments[i], {{
                                            type = "SILVER_PRODUCTS",
                                            capacity = foundGoodsCapacity,
                                            cargoBay = foundGoodsCargobay
                                        }})
                                        table.insert(data.metadata.transportVehicle.compartments[i], {{
                                            type = "GOLD_PRODUCTS",
                                            capacity = foundGoodsCapacity,
                                            cargoBay = foundGoodsCargobay
                                        }})
                                        table.insert(data.metadata.transportVehicle.compartments[i], {{
                                            type = "TOBACCO",
                                            capacity = foundGoodsCapacity,
                                            cargoBay = foundGoodsCargobay
                                        }})
                                        table.insert(data.metadata.transportVehicle.compartments[i], {{
                                            type = "CIGARS",
                                            capacity = foundGoodsCapacity,
                                            cargoBay = foundGoodsCargobay
                                        }})
                                        table.insert(data.metadata.transportVehicle.compartments[i], {{
                                            type = "SILVER",
                                            capacity = foundGoodsCapacity,
                                            cargoBay = foundGoodsCargobay
                                        }})
                                        table.insert(data.metadata.transportVehicle.compartments[i], {{
                                            type = "GOLD",
                                            capacity = foundGoodsCapacity,
                                            cargoBay = foundGoodsCargobay
                                        }})
                                        table.insert(data.metadata.transportVehicle.compartments[i], {{
                                            type = "COPPER",
                                            capacity = foundGoodsCapacity,
                                            cargoBay = foundGoodsCargobay
                                        }})
                                        table.insert(data.metadata.transportVehicle.compartments[i], {{
                                            type = "ALUMINUM",
                                            capacity = foundGoodsCapacity,
                                            cargoBay = foundGoodsCargobay
                                        }})
                                        table.insert(data.metadata.transportVehicle.compartments[i], {{
                                            type = "ALCOHOLIC_DRINKS",
                                            capacity = foundGoodsCapacity,
                                            cargoBay = foundGoodsCargobay
                                        }})
                                        table.insert(data.metadata.transportVehicle.compartments[i], {{
                                            type = "CHAMPAGNE",
                                            capacity = foundGoodsCapacity,
                                            cargoBay = foundGoodsCargobay
                                        }})
                                        table.insert(data.metadata.transportVehicle.compartments[i], {{
                                            type = "CIGARETTES",
                                            capacity = foundGoodsCapacity,
                                            cargoBay = foundGoodsCargobay
                                        }})
                                        table.insert(data.metadata.transportVehicle.compartments[i], {{
                                            type = "CARTONS",
                                            capacity = foundGoodsCapacity,
                                            cargoBay = foundGoodsCargobay
                                        }})
                                        table.insert(data.metadata.transportVehicle.compartments[i], {{
                                            type = "FRUIT_JUICE",
                                            capacity = foundGoodsCapacity,
                                            cargoBay = foundGoodsCargobay
                                        }})
                                    end
                                    if (foundConstructionCapacity > 0) then
                                        table.insert(data.metadata.transportVehicle.compartments[i], {{
                                            type = "MARBLE",
                                            capacity = foundConstructionCapacity,
                                            cargoBay = foundConstructionCargobay
                                        }})
                                    end
                                    if (foundIronOreCapacity > 0) then
                                        table.insert(data.metadata.transportVehicle.compartments[i], {{
                                            type = "SLAG",
                                            capacity = foundIronOreCapacity,
                                            cargoBay = foundIronOreCargobay
                                        }})
                                        table.insert(data.metadata.transportVehicle.compartments[i], {{
                                            type = "SAND",
                                            capacity = foundIronOreCapacity,
                                            cargoBay = foundIronOreCargobay
                                        }})
                                        table.insert(data.metadata.transportVehicle.compartments[i], {{
                                            type = "SILVER_ORE",
                                            capacity = foundIronOreCapacity,
                                            cargoBay = foundIronOreCargobay
                                        }})
                                        table.insert(data.metadata.transportVehicle.compartments[i], {{
                                            type = "GOLD_ORE",
                                            capacity = foundIronOreCapacity,
                                            cargoBay = foundIronOreCargobay
                                        }})
                                        table.insert(data.metadata.transportVehicle.compartments[i], {{
                                            type = "COPPER_ORE",
                                            capacity = foundIronOreCapacity,
                                            cargoBay = foundIronOreCargobay
                                        }})
                                        table.insert(data.metadata.transportVehicle.compartments[i], {{
                                            type = "ALUMINUM_ORE",
                                            capacity = foundIronOreCapacity,
                                            cargoBay = foundIronOreCargobay
                                        }})
                                        table.insert(data.metadata.transportVehicle.compartments[i], {{
                                            type = "OIL_SAND",
                                            capacity = foundIronOreCapacity,
                                            cargoBay = foundIronOreCargobay
                                        }})
                                        table.insert(data.metadata.transportVehicle.compartments[i], {{
                                            type = "ASPHALT",
                                            capacity = foundIronOreCapacity,
                                            cargoBay = foundIronOreCargobay
                                        }})
                                        table.insert(data.metadata.transportVehicle.compartments[i], {{
                                            type = "SUGAR",
                                            capacity = foundIronOreCapacity,
                                            cargoBay = foundIronOreCargobay
                                        }})
                                    end
                                    if (foundOilCapacity > 0) then
                                        table.insert(data.metadata.transportVehicle.compartments[i], {{
                                            type = "LUBRICANTS",
                                            capacity = foundOilCapacity,
                                            cargoBay = foundOilCargobay
                                        }})
                                        table.insert(data.metadata.transportVehicle.compartments[i], {{
                                            type = "WASTE_WATER",
                                            capacity = foundOilCapacity,
                                            cargoBay = foundOilCargobay
                                        }})
                                        table.insert(data.metadata.transportVehicle.compartments[i], {{
                                            type = "WATER",
                                            capacity = foundOilCapacity,
                                            cargoBay = foundOilCargobay
                                        }})
                                        table.insert(data.metadata.transportVehicle.compartments[i], {{
                                            type = "JUICE_CONCENTRATE",
                                            capacity = foundOilCapacity,
                                            cargoBay = foundOilCargobay
                                        }})
                                    end
                                end
                            elseif (data.metadata.transportVehicle.compartmentsList) then
                                for h = 1, #data.metadata.transportVehicle.compartmentsList do
                                    if (data.metadata.transportVehicle.compartmentsList[h].loadConfigs) then
                                        for i = 1, #data.metadata.transportVehicle.compartmentsList[h].loadConfigs do
                                            local foundFoodCapacity = 0
                                            local foundFoodCargobay = null
                                            local foundGoodsCapacity = 0
                                            local foundGoodsCargobay = null
                                            local foundConstructionCapacity = 0
                                            local foundConstructionCargobay = null
                                            local foundIronOreCapacity = 0
                                            local foundIronOreCargobay = null
                                            local foundOilCapacity = 0
                                            local foundOilCargobay = null
                                            for j = 1, #data.metadata.transportVehicle.compartmentsList[h].loadConfigs[i]
                                                .cargoEntries do
                                                if (string.upper(
                                                    data.metadata.transportVehicle.compartmentsList[h].loadConfigs[i]
                                                        .cargoEntries[j].type) == "FOOD") then
                                                    foundFoodCapacity =
                                                        data.metadata.transportVehicle.compartmentsList[h].loadConfigs[i]
                                                            .cargoEntries[j].capacity
                                                    foundFoodCargobay =
                                                        data.metadata.transportVehicle.compartmentsList[h].loadConfigs[i]
                                                            .cargoEntries[j].cargoBay
                                                elseif (string.upper(
                                                    data.metadata.transportVehicle.compartmentsList[h].loadConfigs[i]
                                                        .cargoEntries[j].type) == "GOODS") then
                                                    foundGoodsCapacity =
                                                        data.metadata.transportVehicle.compartmentsList[h].loadConfigs[i]
                                                            .cargoEntries[j].capacity
                                                    foundGoodsCargobay =
                                                        data.metadata.transportVehicle.compartmentsList[h].loadConfigs[i]
                                                            .cargoEntries[j].cargoBay
                                                elseif (string.upper(
                                                    data.metadata.transportVehicle.compartmentsList[h].loadConfigs[i]
                                                        .cargoEntries[j].type) == "CONSTRUCTION_MATERIALS") then
                                                    foundConstructionCapacity =
                                                        data.metadata.transportVehicle.compartmentsList[h].loadConfigs[i]
                                                            .cargoEntries[j].capacity
                                                    foundConstructionCargobay =
                                                        data.metadata.transportVehicle.compartmentsList[h].loadConfigs[i]
                                                            .cargoEntries[j].cargoBay
                                                elseif (string.upper(
                                                    data.metadata.transportVehicle.compartmentsList[h].loadConfigs[i]
                                                        .cargoEntries[j].type) == "IRON_ORE") then
                                                    foundIronOreCapacity =
                                                        data.metadata.transportVehicle.compartmentsList[h].loadConfigs[i]
                                                            .cargoEntries[j].capacity
                                                    foundIronOreCargobay =
                                                        data.metadata.transportVehicle.compartmentsList[h].loadConfigs[i]
                                                            .cargoEntries[j].cargoBay
                                                elseif (string.upper(
                                                    data.metadata.transportVehicle.compartmentsList[h].loadConfigs[i]
                                                        .cargoEntries[j].type) == "OIL") then
                                                    foundOilCapacity =
                                                        data.metadata.transportVehicle.compartmentsList[h].loadConfigs[i]
                                                            .cargoEntries[j].capacity
                                                    foundOilCargobay =
                                                        data.metadata.transportVehicle.compartmentsList[h].loadConfigs[i]
                                                            .cargoEntries[j].cargoBay
                                                end
                                            end
                                            if (foundFoodCapacity > 0) then
                                                table.insert(
                                                    data.metadata.transportVehicle.compartmentsList[h].loadConfigs, {
                                                        cargoEntries = {{
                                                            type = "LIVESTOCK",
                                                            capacity = foundFoodCapacity,
                                                            cargoBay = foundFoodCargobay
                                                        }}
                                                    })
                                                table.insert(
                                                    data.metadata.transportVehicle.compartmentsList[h].loadConfigs, {
                                                        cargoEntries = {{
                                                            type = "FISH",
                                                            capacity = foundFoodCapacity,
                                                            cargoBay = foundFoodCargobay
                                                        }}
                                                    })
                                                table.insert(
                                                    data.metadata.transportVehicle.compartmentsList[h].loadConfigs, {
                                                        cargoEntries = {{
                                                            type = "MEAT",
                                                            capacity = foundFoodCapacity,
                                                            cargoBay = foundFoodCargobay
                                                        }}
                                                    })
                                                table.insert(
                                                    data.metadata.transportVehicle.compartmentsList[h].loadConfigs, {
                                                        cargoEntries = {{
                                                            type = "COFFEE_BERRIES",
                                                            capacity = foundFoodCapacity,
                                                            cargoBay = foundFoodCargobay
                                                        }}
                                                    })
                                                table.insert(
                                                    data.metadata.transportVehicle.compartmentsList[h].loadConfigs, {
                                                        cargoEntries = {{
                                                            type = "COFFEE",
                                                            capacity = foundFoodCapacity,
                                                            cargoBay = foundFoodCargobay
                                                        }}
                                                    })
                                                table.insert(
                                                    data.metadata.transportVehicle.compartmentsList[h].loadConfigs, {
                                                        cargoEntries = {{
                                                            type = "ALCOHOL",
                                                            capacity = foundFoodCapacity,
                                                            cargoBay = foundFoodCargobay
                                                        }}
                                                    })
                                                table.insert(
                                                    data.metadata.transportVehicle.compartmentsList[h].loadConfigs, {
                                                        cargoEntries = {{
                                                            type = "FRUIT",
                                                            capacity = foundFoodCapacity,
                                                            cargoBay = foundFoodCargobay
                                                        }}
                                                    })
                                                table.insert(
                                                    data.metadata.transportVehicle.compartmentsList[h].loadConfigs, {
                                                        cargoEntries = {{
                                                            type = "GRAPES",
                                                            capacity = foundFoodCapacity,
                                                            cargoBay = foundFoodCargobay
                                                        }}
                                                    })
                                            end
                                            if (foundGoodsCapacity > 0) then
                                                table.insert(
                                                    data.metadata.transportVehicle.compartmentsList[h].loadConfigs, {
                                                        cargoEntries = {{
                                                            type = "PAPER",
                                                            capacity = foundGoodsCapacity,
                                                            cargoBay = foundGoodsCargobay
                                                        }}
                                                    })
                                                table.insert(
                                                    data.metadata.transportVehicle.compartmentsList[h].loadConfigs, {
                                                        cargoEntries = {{
                                                            type = "WAR_MATERIAL",
                                                            capacity = foundGoodsCapacity,
                                                            cargoBay = foundGoodsCargobay
                                                        }}
                                                    })
                                                table.insert(
                                                    data.metadata.transportVehicle.compartmentsList[h].loadConfigs, {
                                                        cargoEntries = {{
                                                            type = "SILVER_PRODUCTS",
                                                            capacity = foundGoodsCapacity,
                                                            cargoBay = foundGoodsCargobay
                                                        }}
                                                    })
                                                table.insert(
                                                    data.metadata.transportVehicle.compartmentsList[h].loadConfigs, {
                                                        cargoEntries = {{
                                                            type = "GOLD_PRODUCTS",
                                                            capacity = foundGoodsCapacity,
                                                            cargoBay = foundGoodsCargobay
                                                        }}
                                                    })
                                                table.insert(
                                                    data.metadata.transportVehicle.compartmentsList[h].loadConfigs, {
                                                        cargoEntries = {{
                                                            type = "TOBACCO",
                                                            capacity = foundGoodsCapacity,
                                                            cargoBay = foundGoodsCargobay
                                                        }}
                                                    })
                                                table.insert(
                                                    data.metadata.transportVehicle.compartmentsList[h].loadConfigs, {
                                                        cargoEntries = {{
                                                            type = "CIGARS",
                                                            capacity = foundGoodsCapacity,
                                                            cargoBay = foundGoodsCargobay
                                                        }}
                                                    })
                                                table.insert(
                                                    data.metadata.transportVehicle.compartmentsList[h].loadConfigs, {
                                                        cargoEntries = {{
                                                            type = "SILVER",
                                                            capacity = foundGoodsCapacity,
                                                            cargoBay = foundGoodsCargobay
                                                        }}
                                                    })
                                                table.insert(
                                                    data.metadata.transportVehicle.compartmentsList[h].loadConfigs, {
                                                        cargoEntries = {{
                                                            type = "GOLD",
                                                            capacity = foundGoodsCapacity,
                                                            cargoBay = foundGoodsCargobay
                                                        }}
                                                    })
                                                table.insert(
                                                    data.metadata.transportVehicle.compartmentsList[h].loadConfigs, {
                                                        cargoEntries = {{
                                                            type = "COPPER",
                                                            capacity = foundGoodsCapacity,
                                                            cargoBay = foundGoodsCargobay
                                                        }}
                                                    })
                                                table.insert(
                                                    data.metadata.transportVehicle.compartmentsList[h].loadConfigs, {
                                                        cargoEntries = {{
                                                            type = "ALUMINUM",
                                                            capacity = foundGoodsCapacity,
                                                            cargoBay = foundGoodsCargobay
                                                        }}
                                                    })
                                                table.insert(
                                                    data.metadata.transportVehicle.compartmentsList[h].loadConfigs, {
                                                        cargoEntries = {{
                                                            type = "ALCOHOLIC_DRINKS",
                                                            capacity = foundGoodsCapacity,
                                                            cargoBay = foundGoodsCargobay
                                                        }}
                                                    })
                                                table.insert(
                                                    data.metadata.transportVehicle.compartmentsList[h].loadConfigs, {
                                                        cargoEntries = {{
                                                            type = "CHAMPAGNE",
                                                            capacity = foundGoodsCapacity,
                                                            cargoBay = foundGoodsCargobay
                                                        }}
                                                    })
                                                table.insert(
                                                    data.metadata.transportVehicle.compartmentsList[h].loadConfigs, {
                                                        cargoEntries = {{
                                                            type = "CIGARETTES",
                                                            capacity = foundGoodsCapacity,
                                                            cargoBay = foundGoodsCargobay
                                                        }}
                                                    })
                                                table.insert(
                                                    data.metadata.transportVehicle.compartmentsList[h].loadConfigs, {
                                                        cargoEntries = {{
                                                            type = "CARTONS",
                                                            capacity = foundGoodsCapacity,
                                                            cargoBay = foundGoodsCargobay
                                                        }}
                                                    })
                                                table.insert(
                                                    data.metadata.transportVehicle.compartmentsList[h].loadConfigs, {
                                                        cargoEntries = {{
                                                            type = "FRUIT_JUICE",
                                                            capacity = foundGoodsCapacity,
                                                            cargoBay = foundGoodsCargobay
                                                        }}
                                                    })
                                            end
                                            if (foundConstructionCapacity > 0) then
                                                table.insert(
                                                    data.metadata.transportVehicle.compartmentsList[h].loadConfigs, {
                                                        cargoEntries = {{
                                                            type = "MARBLE",
                                                            capacity = foundConstructionCapacity,
                                                            cargoBay = foundConstructionCargobay
                                                        }}
                                                    })
                                            end
                                            if (foundIronOreCapacity > 0) then
                                                table.insert(
                                                    data.metadata.transportVehicle.compartmentsList[h].loadConfigs, {
                                                        cargoEntries = {{
                                                            type = "SLAG",
                                                            capacity = foundIronOreCapacity,
                                                            cargoBay = foundIronOreCargobay
                                                        }}
                                                    })
                                                table.insert(
                                                    data.metadata.transportVehicle.compartmentsList[h].loadConfigs, {
                                                        cargoEntries = {{
                                                            type = "SAND",
                                                            capacity = foundIronOreCapacity,
                                                            cargoBay = foundIronOreCargobay
                                                        }}
                                                    })
                                                table.insert(
                                                    data.metadata.transportVehicle.compartmentsList[h].loadConfigs, {
                                                        cargoEntries = {{
                                                            type = "SILVER_ORE",
                                                            capacity = foundIronOreCapacity,
                                                            cargoBay = foundIronOreCargobay
                                                        }}
                                                    })
                                                table.insert(
                                                    data.metadata.transportVehicle.compartmentsList[h].loadConfigs, {
                                                        cargoEntries = {{
                                                            type = "GOLD_ORE",
                                                            capacity = foundIronOreCapacity,
                                                            cargoBay = foundIronOreCargobay
                                                        }}
                                                    })
                                                table.insert(
                                                    data.metadata.transportVehicle.compartmentsList[h].loadConfigs, {
                                                        cargoEntries = {{
                                                            type = "COPPER_ORE",
                                                            capacity = foundIronOreCapacity,
                                                            cargoBay = foundIronOreCargobay
                                                        }}
                                                    })
                                                table.insert(
                                                    data.metadata.transportVehicle.compartmentsList[h].loadConfigs, {
                                                        cargoEntries = {{
                                                            type = "ALUMINUM_ORE",
                                                            capacity = foundIronOreCapacity,
                                                            cargoBay = foundIronOreCargobay
                                                        }}
                                                    })
                                                table.insert(
                                                    data.metadata.transportVehicle.compartmentsList[h].loadConfigs, {
                                                        cargoEntries = {{
                                                            type = "OIL_SAND",
                                                            capacity = foundIronOreCapacity,
                                                            cargoBay = foundIronOreCargobay
                                                        }}
                                                    })
                                                table.insert(
                                                    data.metadata.transportVehicle.compartmentsList[h].loadConfigs, {
                                                        cargoEntries = {{
                                                            type = "ASPHALT",
                                                            capacity = foundIronOreCapacity,
                                                            cargoBay = foundIronOreCargobay
                                                        }}
                                                    })
                                                table.insert(
                                                    data.metadata.transportVehicle.compartmentsList[h].loadConfigs, {
                                                        cargoEntries = {{
                                                            type = "SUGAR",
                                                            capacity = foundIronOreCapacity,
                                                            cargoBay = foundIronOreCargobay
                                                        }}
                                                    })
                                            end
                                            if (foundOilCapacity > 0) then
                                                table.insert(
                                                    data.metadata.transportVehicle.compartmentsList[h].loadConfigs, {
                                                        cargoEntries = {{
                                                            type = "LUBRICANTS",
                                                            capacity = foundOilCapacity,
                                                            cargoBay = foundOilCargobay
                                                        }}
                                                    })
                                                table.insert(
                                                    data.metadata.transportVehicle.compartmentsList[h].loadConfigs, {
                                                        cargoEntries = {{
                                                            type = "WASTE_WATER",
                                                            capacity = foundOilCapacity,
                                                            cargoBay = foundOilCargobay
                                                        }}
                                                    })
                                                table.insert(
                                                    data.metadata.transportVehicle.compartmentsList[h].loadConfigs, {
                                                        cargoEntries = {{
                                                            type = "WATER",
                                                            capacity = foundOilCapacity,
                                                            cargoBay = foundOilCargobay
                                                        }}
                                                    })
                                                table.insert(
                                                    data.metadata.transportVehicle.compartmentsList[h].loadConfigs, {
                                                        cargoEntries = {{
                                                            type = "JUICE_CONCENTRATE",
                                                            capacity = foundOilCapacity,
                                                            cargoBay = foundOilCargobay
                                                        }}
                                                    })
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
                return data
            end)
        end
    }
end
