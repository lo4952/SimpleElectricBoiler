local recipe_boiler = table.deepcopy(data.raw["recipe"]["boiler"])
local recipe_override = {
    name = "electric-boiler",
    enabled = "false",
    ingredients = {
        {"boiler", 1},
        {"electronic-circuit", 1}
    },
    result = "electric-boiler"
}

for k,v in pairs(recipe_override) do
    recipe_boiler[k]=v
end

data:extend({recipe_boiler})
