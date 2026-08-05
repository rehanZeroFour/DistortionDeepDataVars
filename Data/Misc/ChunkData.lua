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
							{'Weedle',  5, 6, 5, nil, nil, nil, 'beedrillite', 10},
							{'Wurmple',  5, 6, 5},
							{'Blipbug', 5, 6, 5},
							{'Kricketot', 5, 6, 5},
							{'Sewaddle', 5, 6, 5, 'day'},
							{'Venipede', 5, 6, 5, 'night'},
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
							{'Bellsprout', 5, 6, 4, nil, nil, nil, 'victreebelite', 10},
							{'Meowth', 5, 6, 4, 'night', false, 'Halloween'},
							{'Mankey', 5, 6, 4, 'day'},
							{'Pansage', 5, 6, 4},
						}
					),
				},
			},
		},
		['chunk3'] = {
			regions = {
				['Route 3'] = {
					Grass=Variant(
						EncounterList {
							{'Poochyena', 5, 7, 20},
							{'Shinx',     5, 7, 20},
							{'Electrike', 5, 7, 20},
							{'Yungoos',   5, 7, 20},
							{'Mareep',    5, 7, 20},
							{'Nincada',   5, 7, 10},
							{'Abra',      5, 7, 10},
							{'Pachirisu', 6, 8,  4},
						},
						'Hard',
						{
							{'Poochyena', 5, 7, 8},
							{'Shinx',     5, 7, 8},
							{'Electrike', 5, 7, 8,nil,nil,nil,'manectite',10},
							{'Yungoos',   5, 7, 8},
							{'Mareep',    5, 7, 8},
							{'Wooloo',    5, 7, 8},
							{'Pawmi',    5, 7, 8},
							{'Pikachu',    5, 7, 8, nil, nil, nil, 'raichunitey',10},
							{'Nincada',   5, 7, 8},
							{'Abra',      5, 7, 7, nil, nil, nil, 'alakazite', 10},
							{'Pachirisu', 6, 8,  7},
							{'Emolga', 6, 8,  7},
							{'Dedenne', 6, 8,  7},
						}
					),
				},
				['Route 4'] = {
					Grass=Variant(
						EncounterList {
							{'Pidgey', 7,  9, 25},
							{'Shinx',  7,  9, 20},
							{'Mareep', 7,  9, 20},
							{'Stunky', 7,  9, 15},
							{'Skiddo', 7, 10, 10},
							{'Marill', 7, 10, 10},
							{'Wattrel', 7, 10, 5},
						},
						'Hard',
						{
							{'Capsakid', 7,  9, 15,nil,nil,nil, 'scovillainite',10},
							{'Meowth',  7,  9, 14},
							{'Purrloin', 7,  9, 14},
							{'Stunky', 7,  9, 15},
							{'Glameow', 7, 10, 14},
							{'Skitty', 7, 10, 14},
							{'Skiddo', 7, 10, 14},
						}
					),
				},
			},
		},
		['chunk4'] = {
			regions = {
				['Route 5'] = {
					Grass = Variant(
						EncounterList {
							{'Patrat',     8, 10, 25},
							{'Phanpy',     8, 10, 20},
							{'Blitzle',    8, 10, 20},
							{'Litleo',     8, 10, 20},
							{'Hippopotas', 8, 10, 15},
							{'Salandit',   8, 10, 10},
							{'Maschiff',   8, 10, 10},
							{'Girafarig',  9, 11,  5},
						},
						'Hard',
						{
							{'Patrat',     8, 10, 12},
							{'Phanpy',     8, 10, 12},
							{'Blitzle',    8, 10, 12},
							{'Litleo',     8, 10, 11, nil, nil, nil, 'pyroarite', 10},
							{'Hippopotas', 8, 10, 11},
							{'Salandit',   8, 10, 11},
							{'Maschiff',   8, 10, 11},
							{'Electrike', 8, 10, 10, 'night', false, 'Roria'},
							{'Cubone',  8, 10, 10},
							{'Durant', 8, 10, 10, nil, nil, nil, 'durantite', 10},
						}
					),
				},
				['Old Graveyard'] = {
					Grass = Variant(
						EncounterList {
							{'Cubone',  8, 10, 40},
							{'Gothita', 8, 10, 15},
							{'Gastly',  8, 10, 30, 'night'},
							{'Murkrow', 8, 10, 20, 'night'},
							{'Greavard', 8, 10, 10},
							{'Dreepy', 8, 10, 10},
							{'Yamask',  8, 10,  5, 'night'},
						},
						'Hard',
						{
							{'Cubone',  8, 10, 14, nil, nil, 'Halloween'},
							{'Houndour',  8, 10, 14, 'night', nil, 'Roria'},
							{'Gothita', 8, 10, 12},
							{'Gastly',  8, 10, 12, 'night', nil, nil, 'gengarite', 10},
							{'Murkrow', 8, 10, 12, 'night', nil, nil, 'honchkrowite', 10},
							{'Greavard', 8, 10, 12},
							{'Dreepy', 8, 10, 12},
							{'Yamask',  8, 10,  12, 'night'},
						}
					),
				},
			},
		},
		['chunk7'] = {
			regions = {
				['Mt. Igneus'] = {
					Grass = Variant(
						EncounterList {
							{'Numel',   9, 11, 20},
							--{'Volcanion',   45, 50, 2},
							{'Slugma',  9, 11, 20},
							{'Torkoal', 9, 11, 17},
							{'Magby',   9, 11,  8},
							{'Heatmor', 9, 11,  5},
							{'Zubat',   9, 11, 30, 'day'},

						},
						'Hard',
						{
							{'Numel',   9, 11, 20, nil, nil, nil, 'cameruptite',10},
							--{'Volcanion',   45, 50, 2},
							{'Slugma',  9, 11, 20},
							{'Torkoal', 9, 11, 17},
							{'Magby',   9, 11,  8, nil, nil, nil, 'magmortite', 10},
							{'Heatmor', 9, 11,  5, nil, nil, nil, 'heatmorite', 10},
							{'Zubat',   9, 11, 30, 'day'},
							{'Woobat', 9, 11, 10},
							{'Noibat', 9, 11, 10, nil, nil, nil, 'noivernite', 10},
							{'Pansear', 9, 11, 10},
							{'Sableye', 9, 11, 10, nil, nil, 'Roria'},
						}
					),
				},
			},
		},
		
	}
end
