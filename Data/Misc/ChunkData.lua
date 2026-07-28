return function(env)
	local EncounterList = env.EncounterList
	local OldRodList = env.OldRodList
	local GoodRodList = env.GoodRodList
	local SuperRodList = env.SuperRodList
	local Variant = env.Variant

	return {
		['chunk1'] = {
			regions = {
				['Route 1'] = {
					Grass = Variant(
						EncounterList {
							{'Nickit',     2, 4, 25},
							{'Zigzagoon',  2, 4, 25, 'day'},
							{'Zigzagoon',  2, 4, 25, 'night', false, 'Galar'},
							{'Pidgey',     2, 4, 25},
							{'Bunnelby',   2, 4, 25},
							{'Wurmple',    2, 4, 25},
							{'Sentret',    2, 4,  5, 'day'},
							{'Fletchling', 2, 4, 11},
							{'Pidgey',     2, 4, 4},
						},
						'Hard',
						{
							{'Giratina',     4, 6, 25},
						}
					),
				},
			},
		},
	}
end
