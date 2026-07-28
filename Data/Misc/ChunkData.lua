return function(env)
	for _, name in ipairs({'EncounterList','OldRodList','GoodRodList','SuperRodList','Variant'}) do
		if type(env[name]) ~= 'function' then
			error('ChunkData: env.'..name..' is '..type(env[name])..' (expected function)', 0)
		end
	end

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
							{'Zigzagoon',    2, 4,  25, 'day'},
							{'Zigzagoon',     2, 4,   25, 'night', false, 'Galar'},
							{'Pidgey',     2, 4, 25},
							{'Bunnelby',     2, 4, 25},
							{'Wurmple',     2, 4, 25},
							{'Sentret',    2, 4,  5, 'day'},
							{'Fletchling', 2, 4, 11},
						},
						'Hard',
						{
							{'Zigzagoon',    2, 4,  6, 'day'},
							{'Zigzagoon',     2, 4,   6, 'night', false, 'Galar'},
							{'Rattata', 2, 4, 11, 'day'},
							{'Rattata', 2, 4, 11, 'night', false, 'Alola'},
							{'Pidgey',     2, 4, 6, nil, nil, nil, 'pidgeotite', 5},
							{'Bunnelby',     2, 4, 7},
							{'Buneary', 2, 4, 6},
							{'Sentret',    2, 4,  6, 'day'},
							{'Fletchling', 2, 4, 6},
							{'Rookidee', 2, 4, 6},
							{'Starly', 2, 4, 6, nil, nil, nil, 'staraptite', 5},
							{'Pidove', 2, 4, 6},
							{'Hoothoot', 2, 4, 6, 'night'},
							{'Taillow', 2, 4, 6},
							{'Oddish', 2, 4, 5},
						}
					),
				},
			},
		},
	}
end
