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
		['chunk10'] = {
			regions = {
				['Route 8'] = {
					Grass = Variant(
						EncounterList {
							{'Oddish',     13, 16, 40},
							{'Bellsprout', 13, 16, 40},
							{'Buneary',    13, 16, 35},
							{'Starly',     13, 16, 35},
							{'Lillipup',   13, 16, 35},
							{'Hatenna',    13, 16, 25},
							{'Espurr',     13, 16, 25},
							{'Swablu',     13, 16, 20},
							{'Staravia',   14, 16, 15},
							{'Herdier',    14, 16, 15},
							{'Riolu',      13, 16,  15},
							{'Oricorio',     13, 16, 10, nil, false, 'pompom'},
							{'Indeedee[F]', 13, 16, 1},
						},
						'Hard',
						{
							{'Buneary',    13, 16, 10, nil, nil,nil, 'lopunnite', 10},
							{'Starly',     13, 16, 10, nil, nil,nil, 'staraptite', 10},
							{'Lillipup',   13, 16, 10},
							{'Hatenna',    13, 16, 10},
							{'Espurr',     13, 16, 10},
							{'Swablu',     13, 16, 10, nil, nil,nil, 'altarianite', 10},
							{'Riolu',      13, 16,  10,nil, nil,nil, 'lucarionite', 10},
							{'Oricorio',     13, 16, 10, nil, false, 'pompom'},
							{'Indeedee[F]', 13, 16, 10},
							{'Mienfoo', 13, 16, 10, nil, nil, nil, 'mienshaonite', 10},
						}
					),
				},
			},
		},
		['chunk11'] = {
			regions = {
				['Rosecove Beach'] = {
					Grass = Variant(
						EncounterList {
							{'Shellos',  15, 17, 20},
							{'Slowpoke', 15, 17, 15},
							{'Chewtle', 15, 17, 15},
							{'Mareanie', 15, 17, 10},
							{'Wingull',  15, 17, 10},
							{'Psyduck',  15, 17, 10},
							{'Cramorant', 15, 17, 10},
							{'Cosmog',  15, 17, 1, 'day'},
							--{'Zacian',  55, 65, 2},
							--{'Marshadow',  15, 17, 5},
						},
						'Hard',
						{
							{'Shellos',  15, 17, 10},
							{'Slowpoke', 15, 17, 10, nil, nil,nil, 'slowbronite', 10},
							{'Chewtle', 15, 17, 10},
							{'Mareanie', 15, 17, 10},
							{'Wingull',  15, 17, 10},
							{'Psyduck',  15, 17, 10},
							{'Cramorant', 15, 17, 10},
							{'Wattrel', 15, 17, 10},
							{'Crabrawler', 15, 17, 10, nil, nil,nil, 'crabominite', 10},
							{'Staryu', 15, 17, 10, nil, false, nil, 'straminite', 10},
							{'Dratini', 15, 17, 10, nil, nil, nil, 'dragoninite', 10},
							{'Horsea', 15, 17, 10, nil, nil, nil, 'kingdrite', 10},
							{'Wimpod', 15, 17, 10, nil, nil, nil, 'golisopodite', 10},
							{'Remoraid',15,17,10},
							{'Slowpoke',15,17,10,nil,nil,'Roria'},
						}
					),
				},
			},
		},
		['chunk13'] = {
			regions = {
				['Fortulose Manor'] = {
					Grass = Variant(
						EncounterList {
							{'Phantump',  20, 22, 30},
							{'Pumpkaboo', 20, 22, 30},
							{'Golett',    21, 23,  4},
							{'Dreepy',    21, 22,  1},
						},
						'Hard',
						{
							{'Phantump', 28,30, 18},
							{'Pumpkaboo', 28,30, 18},
							{'Golett',    28,30, 18, nil, nil, nil, 'golurkite', 10},
							{'Dreepy',    28,30, 18},
							{'Litwick', 28,30, 18, 'night', nil, nil, 'chandelurite', 10},
							{'Marowak', 28,30, 18, nil, nil, 'Alola'},
						}
					),
				},
			},
		},
		['chunk17'] = {
			regions = {
				['Cragonos Cliffs'] = {
					Grass = Variant(
						EncounterList {
							{'Woobat',    21, 24, 30, 'night'},
							{'Flabebe',   21, 24, 30},
							{'Trumbeak',  28, 31, 20},
							{'Spearow',   21, 24, 30},
							{'Pidgeotto', 21, 24, 20},
							{'Skiddo',    21, 24, 20},
							{'Milcery',   21, 24, 15},
							--	{'Minior',   21, 24, 15},
							{'Vullaby',   21, 24, 10},
							{'Gligar',    21, 24,  5},
							{'Bagon',     21, 24,  1},
							{'Cosmog',  21, 24, 1, 'night'},
						},
						'Hard',
						{
							{'Woobat',    21, 24, 8, 'night'},
							{'Flabebe',   21, 24, 8},
							{'Trumbeak',  28, 31, 8},
							{'Spearow',   21, 24, 8},
							{'Pidgeotto', 21, 24, 8, nil, nil, nil, 'pidgeotite', 10},
							{'Skiddo',    21, 24, 8},
							{'Milcery',   21, 24, 8},
							{'Vullaby',   21, 24, 8},
							{'Gligar',    21, 24,  8},
							{'Bagon',     21, 24,  8},
							{'Scyther', 21, 25, 8, nil, nil, nil, 'scizorite', 10},
							{'Mareep', 21, 24, 8, nil, nil, 'Roria'},
							{'Falinks',  22, 25, 8, 'day', nil, nil, 'falinksite', 10},
							{'Inkay',    22, 25, 8, 'night', nil, nil, 'malamarite', 10},
							{'Piplup', 21, 24, 8, nil, nil, 'Halloween'},
						}
					),
				},
			},
		},
		['chunk23'] = {
			regions = {
				['Anthian Sewer'] = {
					Grass = Variant(
						EncounterList {
							{'Voltorb',   27, 30, 25},
							{'Magnemite', 27, 30, 25},
							{'Klink',     27, 30, 20},
							{'Impidimp',  27, 30, 15},
							{'Varoom',    27, 30, 15},
							{'Koffing',   27, 30, 10},
							{'Shroodle',  27, 30, 10},
							{'Grimer',    27, 30, 10},
							{'Grubbin',   27, 30, 7},
							{'Elekid',    28, 29,  2},
							--{'Zekrom',    50, 50,  1},
						},
						'Hard',
						{
							{'Voltorb',   27, 30, 10},
							{'Magnemite', 27, 30, 10},
							{'Klink',     27, 30, 10},
							{'Impidimp',  27, 30, 10},
							{'Varoom',    27, 30, 10},
							{'Koffing',   27, 30, 10},
							{'Shroodle',  27, 30, 10},
							{'Grimer',    27, 30, 10},
							{'Grubbin',   27, 30, 10},
							{'Elekid',    28, 29,  10, nil, nil, nil, 'electivirite', 10},
							{'Porygon', 27, 30, 10},
							{'Nidoran[M]', 27, 30, 10, nil, nil, 'Roria'},
						}
					),
				},
			},
		},
	}
end
