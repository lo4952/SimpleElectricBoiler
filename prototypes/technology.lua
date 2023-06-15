local technology_boiler = table.deepcopy(data.raw["technology"]["automation"])
local technology_override = {
    name = "electric-boiler",
    prerequisites = {"automation"},
    icon = "__simpleelectricboiler__/graphics/icons/hr-electric-boiler.png",
    icon_size = 64,
    upgrade = false,
    effects = {
        {
        type = "unlock-recipe",
        recipe = "electric-boiler"
        }
    },

    unit = {
        count = 50,
        ingredients = {{"automation-science-pack", 1}},
        time = 5
    }
}

for k,v in pairs(technology_override) do
    technology_boiler[k]=v
end

data:extend({technology_boiler})
