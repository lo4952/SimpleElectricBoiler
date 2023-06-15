local itemboiler = table.deepcopy(data.raw["item"]["boiler"])
local itemoverride = {
    name = "electric-boiler",
    place_result = "electric-boiler",
    icon_size = 64,
    icon = "__simpleelectricboiler__/graphics/icons/hr-electric-boiler.png",
    order = "b[steam-power]-b[electric-boiler]"
}

for k,v in pairs(itemoverride) do
    itemboiler[k]=v
end

data:extend({itemboiler})
