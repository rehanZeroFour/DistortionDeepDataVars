return function(env)
	local EncounterList = env.EncounterList
	local OldRodList = env.OldRodList
	local GoodRodList = env.GoodRodList
	local SuperRodList = env.SuperRodList

	return {
		['chunk1'] = {
			regions = {
				['Mitis Town'] = {
					OldRod = OldRodList {
						{'Magikarp', 80},
						{'Arrokuda', 20},
					},
					GoodRod = GoodRodList {
						{'Magikarp', 80},
						{'Gyarados', 5},
					},
				},
				['Route 1'] = {
					Music = 14320023424,
					Grass = EncounterList {
						{'Nickit',     2, 4, 25},
						{'Zigzagoon',  2, 4, 25, 'day'},
						{'Zigzagoon',  2, 4, 25, 'night', false, 'Galar'},
						{'Pidgey',     2, 4, 25},
						{'Bunnelby',   2, 4, 25},
						{'Wurmple',    2, 4, 25},
						{'Sentret',    2, 4,  5, 'day'},
						{'Fletchling', 2, 4, 11},
						{'Pidgey',     2, 4, 4},
					} 'Hard' {
						{'Nickit',     4, 6, 25},
						{'Zigzagoon',  4, 6, 25, 'day'},
						{'Zigzagoon',  4, 6, 25, 'night', false, 'Galar'},
						{'Pidgey',     4, 6, 25},
						{'Bunnelby',   4, 6, 25},
						{'Wurmple',    4, 6, 25},
						{'Fletchling', 4, 6, 11},
						{'Scraggy',    4, 6,  4},
					},
				},
			},
		},
	}
end
