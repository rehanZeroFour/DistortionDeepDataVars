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
		['chunk2'] = {
			regions = {
				['Gale Forest'] = {
					Grass = Variant(
						EncounterList {
							{'Caterpie',   3, 5, 20},
							{'Metapod',    5, 6, 10},
							{'Weedle',  5, 6, 10},
							{'Blipbug', 5, 6, 10},
							{'Kakuna',     5, 6, 10},
							{'Smoliv',     3, 5, 10, 'day'},
							{'Nidoran[F]', 3, 5, 10},
							{'Nidoran[M]', 3, 5, 10},
							{'Cherubi', 3, 5, 10},
							{'Ledyba',     3, 5, 15, 'day'},
							{'Spinarak',   3, 5, 15, 'night'},
							{'Hoothoot',   4, 6, 10, 'night'},
							{'Tarountula',    4, 6,  8},
							{'Wattrel',    4, 6,  7},
							{'Pawmi',    4, 6,  6},
							{'Slakoth',    4, 6,  4},
							{'Pikachu',    4, 6,  3, 'day'},
						},
						'Hard',
						{
							{'Caterpie',   3, 5, 5},
							{'Weedle',  5, 6, 5, nil, nil, nil, 'beedrillite', 5},
							{'Wurmple',  5, 6, 5},
							{'Blipbug', 5, 6, 5},
							{'Kricketot', 5, 6, 5},
							{'Sewaddle', 5, 6, 5, 'day'},
							{'Venipede', 5, 6, 5, 'night', nil, nil, 'scolipite', 5},
							{'Smoliv',     5, 6, 5, 'day'},
							{'Nidoran[F]', 5, 6, 5},
							{'Nidoran[M]', 5, 6, 5},
							{'Cherubi', 5, 6, 5},
							{'Ledyba',     5, 6, 5, 'day'},
							{'Spinarak',  5, 6, 5, 'night'},
							{'Tarountula',    5, 5,  8},
							{'Slakoth',    5, 6,  3},
							{'Shroomish', 5, 6, 3},
							{'Morelull', 5, 6, 3},
							{'Bellsprout', 5, 6, 4, nil, nil, nil, 'victreebelite', 5},
							{'Meowth', 5, 6, 4, 'night', false, 'Halloween'},
							{'Mankey', 5, 6, 4, 'day'},
							{'Pansage', 5, 6, 4},
						}
					),
				},
			},
		},
	}
end
