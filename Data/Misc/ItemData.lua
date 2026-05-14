return {
    ['exampleberry'] = {
        id = "exampleberry",
        name = "Example Berry",
        isBerry = true,
        naturalGift = {
            basePower = 80,
            type = "Fire"
        },
        onUpdate = function(pokemon)
            if pokemon.status == 'brn' then
                pokemon:eatItem()
            end
        end,
        onEat = function(pokemon)
            if pokemon.status == 'brn' then
                pokemon:cureStatus()
            end
        end,
    },
    ['examplemegastone'] = {
        id = "examplemegastone",
        name = "Exampleite",
        megaStone = "Examplemon-Mega",
        megaEvolves = "Examplemon",
        onTakeItem = function(item, source)
            if item.megaEvolves == source.baseTemplate.baseSpecies then return false end
            return true
        end,
    },
    ['exampleplate'] = {
        id = "exampleplate",
        name = "Example Plate",
        onPlate = 'Fire',
        onBasePowerPriority = 6,
        onBasePower = function(basePower, user, target, move)
            if move and move.type == 'Fire' then
                return self:chainModify(0x1333, 0x1000)
            end
        end,
    },
}
