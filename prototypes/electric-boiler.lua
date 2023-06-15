local entityboiler = table.deepcopy(data.raw["boiler"]["boiler"])
local entityoverride = {
    name = "electric-boiler",
    energy_consumption = "1.8MW",
    minable = {hardness = 0.2, mining_time = 0.5, result = "electric-boiler"},
    energy_source =
    {
        type = "electric",
        input_priority = "secondary",
        usage_priority = "secondary-input",
        light_flicker = {
            color = {r = 0.6, g = 1, b = 1, a = 0.5},
            minimum_light_size = 0.1,
            light_intensity_to_size_coefficient = 1
        }
    },
    icon = "__simpleelectricboiler__/graphics/icons/hr-electric-boiler.png",
    icon_size = 64,
    fire_flicker_enabled = false,
    fire_glow_flicker_enabled = false,
    fire = {}
}

for k,v in pairs(entityoverride) do
    entityboiler[k]=v
end

entityboiler.fire_glow.north.filename = "__simpleelectricboiler__/graphics/entity/electric-boiler-N-light.png"
entityboiler.fire_glow.south.filename = "__simpleelectricboiler__/graphics/entity/electric-boiler-S-light.png"
entityboiler.fire_glow.east.filename = "__simpleelectricboiler__/graphics/entity/electric-boiler-E-light.png"
entityboiler.fire_glow.west.filename = "__simpleelectricboiler__/graphics/entity/electric-boiler-W-light.png"
entityboiler.fire_glow.north.hr_version.filename = "__simpleelectricboiler__/graphics/entity/hr-electric-boiler-N-light.png"
entityboiler.fire_glow.south.hr_version.filename = "__simpleelectricboiler__/graphics/entity/hr-electric-boiler-S-light.png"
entityboiler.fire_glow.east.hr_version.filename = "__simpleelectricboiler__/graphics/entity/hr-electric-boiler-E-light.png"
entityboiler.fire_glow.west.hr_version.filename = "__simpleelectricboiler__/graphics/entity/hr-electric-boiler-W-light.png"
entityboiler.fire_glow.north.apply_runtime_tint = true
entityboiler.fire_glow.south.apply_runtime_tint = true
entityboiler.fire_glow.east.apply_runtime_tint = true
entityboiler.fire_glow.west.apply_runtime_tint = true
entityboiler.fire_glow.north.tint={r=0.6,g=1,b=1,a=0.4}
entityboiler.fire_glow.south.tint={r=0.6,g=1,b=1,a=0.4}
entityboiler.fire_glow.east.tint={r=0.6,g=1,b=1,a=0.4}
entityboiler.fire_glow.west.tint={r=0.6,g=1,b=1,a=0.4}
entityboiler.fire_glow.north.blend_mode = "additive-soft"
entityboiler.fire_glow.south.blend_mode = "additive-soft"
entityboiler.fire_glow.east.blend_mode = "additive-soft"
entityboiler.fire_glow.west.blend_mode = "additive-soft"

data:extend({entityboiler})
