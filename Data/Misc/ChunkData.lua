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
					--{'Mimikyu',     40, 50, 1},
					--Halloween 2020
					--end
							{'Fletchling', 2, 4, 11},
							{'Sentret',    2, 4,  5, 'day'},
							{'Pidgey',     2, 4, 4},

						},
						'Hard',
						{
							{'Nickit',     4, 6, 25},
							{'Scraggy',    4, 6,  4},
						}
					),
				},
			},
		},
	}
end
