return function(_f)
local Utilities = _f.Utilities
local rc4 = Utilities.rc4

local lockedItems = {
	icestone = {
		condition = function(self)
			return not self.completedEvents.NiceListReward
		end,
		reason = "Complete the Nice List event to unlock this item."
	},
	['HOVER Shiny M.Salamence Board'] = {
		condition = function(self)
			return not self.completedEvents.AA50
		end,
		reason = "Achieve a score of 50 on Alolan Adventure to unlock this board."
	},
	pumpkinball = {
		condition = function(self)
			return _f.Settings.Halloween == false
		end,
		reason = "This item is only available during October."
	},
	frostyball = {
		condition = function(self)
			return _f.Settings.Christmas == false
		end,
		reason = "This item is only available during December."
	}
}

local function isItemLocked(self, itemId)
	local lockConfig = lockedItems[itemId]
	if not lockConfig then return false, nil end
	local isLocked = lockConfig.condition(self)
	return isLocked, lockConfig.reason
end

local function processShopItem(self, itemData, useRC4)
	local itemId = itemData[1]
	local itemPrice = itemData[2]
	local actualItemId = useRC4 and rc4(itemId) or itemId
	local isLocked, lockReason = isItemLocked(self, actualItemId)
	
	if isLocked then
		return {itemId, itemPrice, true, lockReason}
	else
		return {itemId, itemPrice}
	end
end

local function processBadgeItem(self, item, requiredBadges)
	local badges = self:countBadges()
	local itemId = item[1]
	local itemPrice = item[2]
	
	if badges >= requiredBadges then
		local actualItemId = rc4(itemId)
		local isLocked, lockReason = isItemLocked(self, actualItemId)
		
		if isLocked then
			return {itemId, itemPrice, true, lockReason}
		else
			return {itemId, itemPrice}
		end
	else
		local badgeText = requiredBadges == 1 and "badge" or "badges"
		local lockReason = "Requires " .. requiredBadges .. " gym " .. badgeText .. " to unlock."
		return {itemId, itemPrice, true, lockReason}
	end
end

local encryptedShop = {
	pkbl = {rc4('pokeball'),     200},
	rcdy = {rc4('rarecandy'),   50000},
	qcdy = {rc4('quadcandy'),   75000},
	msbl = {rc4('masterball'),  100000},
	grbl = {rc4('greatball'),    500},
	utbl = {rc4('ultraball'),   1000},
	ptn  = {rc4('potion'),       75},
	sptn = {rc4('superpotion'),  180},
	hptn = {rc4('hyperpotion'), 575},
	mptn = {rc4('maxpotion'),   1225},
	frst = {rc4('fullrestore'), 2000},
	reve = {rc4('revive'),      1500},
	antd = {rc4('antidote'),     100},
	przh = {rc4('paralyzeheal'), 150},
	awk  = {rc4('awakening'),    250},
	brnh = {rc4('burnheal'),     250},
	iceh = {rc4('iceheal'),      250},
	flhl = {rc4('fullheal'),     600},
	escr = {rc4('escaperope'),   550},
	rpl  = {rc4('repel'),        350},
	srpl = {rc4('superrepel'),   500},
	mrpl = {rc4('maxrepel'),     700},
	
	ntbl = {rc4('netball'),     1000},
	lxbl = {rc4('luxuryball'),  1000},
	qkbl = {rc4('quickball'),   1000},
	dkbl = {rc4('duskball'),    1000},
	
	pmbl = {rc4('pumpkinball'), 2500},
	fsbl = {rc4('frostyball'),    2500},
	
	pmbl2 = {rc4('pumpkinball'), 5000},
	fsbl2 = {rc4('frostyball'),    5000},
}

local dailyBalls = {
	{
		{rc4('toxicball'),     2000},
		{rc4('insectball'),    2000},
		{rc4('icicleball'),    2000},
	}, {
		{rc4('skyball'),       2000},
		{rc4('zapball'),       2000},
	}, {
		{rc4('fistball'),      2000},
		{rc4('flameball'),     2000},
		{rc4('dracoball'),     2000},
	}, {
		{rc4('spookyball'),    2000},
		{rc4('pixieball'),     2000},
	}, {
		{rc4('earthball'),     2000},
		{rc4('stoneball'),     2000},
		{rc4('dreadball'),     2000},
	}, {
		{rc4('colorlessball'), 2000},
		{rc4('splashball'),    2000},
	}, {
		{rc4('mindball'),      2000},
		{rc4('meadowball'),    2000},
		{rc4('steelball'),     2000},
	}
}
return function(self, shopId)
	if shopId == 'pbemp' then
		local items = {}
		
		table.insert(items, processShopItem(self, encryptedShop.pkbl, true))
		table.insert(items, processShopItem(self, encryptedShop.grbl, true))
		table.insert(items, processShopItem(self, encryptedShop.utbl, true))
		table.insert(items, processShopItem(self, encryptedShop.ntbl, true))
		table.insert(items, processShopItem(self, encryptedShop.msbl, true))
		table.insert(items, processShopItem(self, encryptedShop.lxbl, true))
		table.insert(items, processShopItem(self, encryptedShop.qkbl, true))
		table.insert(items, processShopItem(self, encryptedShop.dkbl, true))
		table.insert(items, processShopItem(self, encryptedShop.pmbl, true))
		table.insert(items, processShopItem(self, encryptedShop.fsbl, true))
		
		-- daily balls
		for _, ball in pairs(dailyBalls[_f.Date:getDate().WeekdayNum + 1]) do
			table.insert(items, processShopItem(self, ball, true))
		end
		
		return items
		
	elseif shopId == 'stnshp' then
		local stoneShop = {
			{rc4('firegem'),     5000},
			{rc4('watergem'),    5000},
			{rc4('electricgem'), 5000},
			{rc4('grassgem'),    5000},
			{rc4('icegem'),      5000},
			{rc4('fightinggem'), 5000},
			{rc4('poisongem'),   5000},
			{rc4('groundgem'),   5000},
			{rc4('flyinggem'),   5000},
			{rc4('psychicgem'),  5000},
			{rc4('buggem'),      5000},
			{rc4('rockgem'),     5000},
			{rc4('ghostgem'),    5000},
			{rc4('dragongem'),   5000},
			{rc4('darkgem'),     5000},
			{rc4('steelgem'),    5000},
			{rc4('normalgem'),   5000},
			{rc4('fairygem'),    5000},
			
			{rc4('waterstone'),    30000},
			{rc4('firestone'),     30000},
			{rc4('leafstone'),     30000},
			{rc4('thunderstone'),  30000},
			{rc4('moonstone'),     30000},
			{rc4('icestone'),      30000}, -- This can be locked
			
			{rc4('griseousorb'),   300000},
			{rc4('venusaurite'),   150000},
			{rc4('blastoisinite'), 150000},
			{rc4('charizarditex'), 150000},
			{rc4('charizarditey'), 150000},
			{rc4('ampharosite'),   150000},
			{rc4('beedrillite'),   150000},
			{rc4('slowbronite'),   150000},
			{rc4('pidgeotite'),    150000},
			{rc4('banettite'),     150000},
			{rc4('diancite'),     150000},
			{rc4('scizorite'),     150000},
			{rc4('absolite'),     150000},
			{rc4('heracronite'),   150000},
			{rc4('pinsirite'),     150000},
			{rc4('altarianite'),   150000},
			{rc4('aerodactylite'), 150000},
			{rc4('alakazite'),     150000},
			{rc4('lopunnite'),     150000},
			{rc4('cameruptite'),   150000},
			{rc4('mawilite'),      150000},
			{rc4('manectite'),     150000},
			{rc4('houndoominite'), 150000},
			{rc4('lucarionite'),   150000},
			{rc4('aggronite'),     150000},
			{rc4('garchompite'),   150000},
			{rc4('salamencite'),   150000},
			{rc4('tyranitarite'),  150000},
			{rc4('metagrossite'),  150000},
			{rc4('mewtwonitex'),  150000},
			{rc4('medichamite'), 150000},
			{rc4('blazikenite'), 150000},
			{rc4('swampertite'), 150000},
			{rc4('sceptilite'), 150000},
			{rc4('gengarite'), 150000},
			{rc4('gyaradosite'), 150000},
			{rc4('galladite'), 150000},
			{rc4('gardevoirite'), 150000},
			--new megas
			{rc4('victreebelite'), 300000},
			{rc4('malamarite'), 300000},
			{rc4('delphoxite'), 300000},
			{rc4('chesnaughtite'), 300000},
			{rc4('drampanite'), 300000},
			{rc4('skarmorite'), 300000},
			{rc4('scolipite'), 300000},
			{rc4('clefablite'), 300000},
			{rc4('meganiumite'), 300000},
			{rc4('feraligite'), 300000},
			{rc4('emboarite'), 300000},
		}
		
		local items = {}
		for _, itemData in pairs(stoneShop) do
			table.insert(items, processShopItem(self, itemData, true))
		end
		
		return items
	elseif shopId == 'bp' then
		local bpItems = {
			{'BP10', 10},
			{'BP50', 50},
			{'ejectpack', 45},
			{'ejectbutton', 65},
			{'hpreset', 2},
			{'attackreset', 2},
			{'defensereset', 2},
			{'spatkreset', 2},
			{'spdefreset', 2},
			{'speedreset', 2},
			{'sawsbuckcoffee', 2},
			{'razorfang', 2},
			{'razorclaw', 2},
			{'affectionribbon', 2},
			{'airballoon', 2},
			{'weaknesspolicy', 2},
			{'eviolite', 2},
			{'scopelens', 2},
			{'focussash', 2},
			{'bindingband', 2},
			{'widelens', 2},
			{'seaincense', 2},
			{'laxincense',  2},
			{'roseincense', 2},
			{'pureincense', 2},
			{'rockincense', 2},
			{'oddincense',  2},
			{'waveincense', 2},
			{'fullincense', 2},
			{'luckincense', 2},
			{'assaultvest', 2},
			{'flameorb', 2},
			{'toxicorb', 2},
			{'duskstone', 2},
			{'dawnstone', 2},
			{'shinystone', 2},
			{'lifeorb', 2},
			{'machobrace', 2},
			{'upgrade', 2},
			{'metalcoat', 2},
			{'abilitycapsule', 2},
			{'TM01 Hone Claws', 10},
			{'TM04 Calm Mind', 10},
			{'TM21 Frustration', 10},
			{'TM27 Return', 10},
			{'TM44 Rest', 10},
			{'TM54 False Swipe', 10},
			{'TM12 Taunt', 10},
			{'TM28 Dig', 10},
			{'TM47 Low Sweep', 10},
			{'TM30 Shadow Ball', 10},
			{'TM53 Energy Ball', 10},
			{'TM19 Roost', 10},
			{'TM77 Psych Up', 10},
			{'TM72 Volt Switch', 10},
			{'TM89 U-turn', 10},
			{'TM16 Light Screen', 10},
			{'TM33 Reflect', 10},
			{'TM20 Safeguard', 10},
			{'TM17 Protect', 10},
			{'TM13 Ice Beam', 10},
			{'TM24 Thunderbolt', 10},
			{'TM35 Flamethrower', 10},
			{'TM26 Earthquake', 10},
			{'TM73 Thunder Wave', 10},
			{'TM75 Swords Dance', 10},
			{'TM80 Rock Slide', 10},
			{'TM03 Psyshock', 10},
			{'TM97 Dark Pulse', 10},
			{'TR01 Body Slam', 7},
			{'TR02 Flamethrower', 7},
			{'TR03 Hydro Pump', 7},
			{'TR04 Surf', 7},
			{'TR05 Ice Beam', 7},
			{'TR06 Blizzard', 7},
			{'TR07 Low Kick', 7},
			{'TR08 Thunderbolt', 7},
			{'TR09 Thunder', 7},
			{'TR10 Earthquake', 7},
			{'TR11 Psychic', 7},
			{'TR12 Agility', 7},
			{'TR13 Focus Energy', 7},
			{'TR14 Metronome', 7},
			{'TR15 Fire Blast', 7},
			{'TR16 Waterfall', 7},
			{'TR17 Amnesia', 7},
			{'TR18 Leech Life', 7},
			{'TR19 Tri Attack', 7},
			{'TR20 Substitute', 7},
			{'TR21 Reversal', 7},
			{'TR22 Sludge Bomb', 7},
			{'TR23 Spikes', 7},
			{'TR24 Outrage', 7},
			{'medichamite', 2},
			{'blazikenite', 2},
			{'swampertite', 2},
			{'sceptilite', 2},
			{'gengarite', 2},
			{'gyaradosite', 2},
			{'galladite', 2},
			{'gardevoirite', 2},
		}
		
		local items = {}
		for _, itemData in pairs(bpItems) do
			table.insert(items, processShopItem(self, itemData, false))
		end
		
		return items
	elseif shopId == 'hallow' then
		local hallowItems = {
			{'HT100', 100},
			{'HT500', 500},
			{'HT1000', 1000},
			{'HT5000', 5000},
			--{'PKMN Mew-hallow',    1},
			{'fierygengarvoucher', 2000},
			{'pumpkingengarvoucher', 1900},
			{'hallowmewvoucher', 1350},
			{'hallowbulbasaurvoucher', 725},
			{'hallowtepigvoucher', 725},
			{'hallowtotodilevoucher', 725},
			{'gengariteh', 875},
			{'strangepotion', 950},
			{'spookypotion', 400},
			{'spookyball', 5},
			{'pumpkinball', 10},
			{'linkingcord', 3500},
			{'TM112 Flame Charge', 25},
		}
		
		local items = {}
		for _, itemData in pairs(hallowItems) do
			table.insert(items, processShopItem(self, itemData, false))
		end
		
		return items
	elseif shopId == 'mall' then
		local mallItems = {
			{'BP10', 10},
			{'BP50', 50},
			{'choiceband', 500},  
			{'choicespecs', 500},  
			{'choicescarf', 500},
			{'abilitypatch', 220},
			{'revealglass',  525},
			{'electricseed', 175},
			{'mistyseed', 175},
			{'grassyseed', 175},
			{'psychicseed', 175},
			{'goldbottlecap', 300},
			{'silverbottlecap', 150},
			{'hpreset', 10},
			{'attackreset', 10},
			{'defensereset', 10},
			{'spatkreset', 10},
			{'spdefreset', 10},
			{'speedreset', 10},
			{'jollymint', 20},
			{'lonelymint', 20},
			{'bravemint', 20},
			{'adamantmint', 20},
			{'naughtymint', 20},
			{'boldmint', 20},
			{'relaxedmint', 20},
			{'impishmint', 20},
			{'laxmint', 20},
			{'timidmint', 20},
			{'hastymint', 20},
			{'seriousmint', 20},
			{'naivemint', 20},
			{'modestmint', 20},
			{'mildmint', 20},
			{'quietmint', 20},
			{'rashmint', 20},
			{'calmmint', 20},
			{'gentlemint',  20},
			{'sassymint', 20},
			{'carefulmint', 20},
			{'TR49 Calm Mind', 7},
			{'TR50 Leaf Blade', 7},
			{'TR51 Dragon Dance', 7},
			{'TR52 Gyro Ball', 7},
			{'TR53 Close Combat', 7},
			{'TR54 Toxic Spikes', 7},
			{'TR55 Flare Blitz', 7},
			{'TR56 Aura Sphere', 7},
			{'TR57 Poison Jab', 7},
			{'TR58 Dark Pulse', 7},
			{'TR59 Seed Bomb', 7},
			{'TR60 X-Scissor', 7},
			{'TR61 Bug Buzz', 7},
			{'TR62 Dragon Pulse', 7},
			{'TR63 Power Gem', 7},
			{'TR64 Focus Blast', 7},
			{'TR65 Energy Ball', 7},
			{'TR66 Brave Bird', 7},
			{'TR67 Earth Power', 7},
			{'TR68 Nasty Plot', 7},
			{'TR69 Zen Headbutt', 7},
			{'TR70 Flash Cannon', 7},
			{'TR71 Leaf Storm', 7},
			{'TR72 Power Whip', 7},
			{'TR73 Gunk Shot', 7},
			{'TR74 Iron Head', 7},
			{'TR75 Stone Edge', 7},
			{'TR76 Stealth Rock', 7},
		}
		
		local items = {}
		for _, itemData in pairs(mallItems) do
			table.insert(items, processShopItem(self, itemData, false))
		end
		
		return items
	elseif shopId == 'mint' then
		local mint = {
		    {'BP10', 10},
			{'BP50', 50},
			{'lonelymint', 75},
			{'adamantmint', 75},
			{'naughtymint', 75},
			{'bravemint', 75},
			{'boldmint', 75},
			{'impishmint', 75},
			{'laxmint', 75},
			{'relaxedmint', 75},
			{'modestmint', 75},
			{'mildmint', 75},
			{'rashmint', 75},
			{'quietmint', 75},
			{'calmmint', 75},
			{'gentlemint', 75},
			{'carefulmint', 75},
			{'sassymint', 75},
			{'timidmint', 75},
			{'hastymint', 75},
			{'jollymint', 75},
			{'naivemint', 75},
			{'seriousmint', 75}
		}
		return mint
	elseif shopId == 'berryshp' then
		local berryshp = {
			{rc4('cheriberry'),     1500},
			{rc4('chestoberry'),    1500},
			{rc4('pechaberry'), 1500},
			{rc4('rawstberry'),    1500},
			{rc4('aspearberry'),      1500},
			{rc4('leppaberry'), 1500},
			{rc4('oranberry'),   1500},
			{rc4('persimberry'),   1500},
			{rc4('lumberry'),   1500},
			{rc4('sitrusberry'),  1500},
			{rc4('figyberry'),      1500},
			{rc4('ganlonberry'),      1500},
			{rc4('wikiberry'),     1500},
			{rc4('colburberry'),     1500},
			{rc4('magoberry'),    1500},
			{rc4('aguavberry'),   1500},
			{rc4('iapapaberry'),     1500},
			{rc4('razzberry'),    1500},
			{rc4('blukberry'),   1500},
			{rc4('nanabberry'),    1500},
			{rc4('pinapberry'),    1500},
			{rc4('pomegberry'),    1500},
			{rc4('kelpsyberry'),    1500},
			{rc4('habanberry'),    1500},
			{rc4('qualotberry'),    1500},
			{rc4('hondewberry'),    1500},
			{rc4('grepaberry'),    1500},
			{rc4('tamatoberry'),    1500},
			{rc4('enigmaberry'),    1500},
			{rc4('cornnberry'),    1500},
			{rc4('magostberry'),    1500},
			{rc4('rabutaberry'),    1500},
			{rc4('nomelberry'),    1500},
			{rc4('spelonberry'),    1500},
			{rc4('pamtreberry'),    1500},
			{rc4('watmelberry'),    1500},
			{rc4('durinberry'),    1500},
			{rc4('belueberry'),    1500},
			{rc4('occaberry'),    1500},
			{rc4('passhoberry'),    1500},
			{rc4('chilanberry'),    1500},
			{rc4('chopleberry'),    1500},
			{rc4('colburberry'),    1500},
			{rc4('custapberry'),    1500},
			{rc4('salacberry'),    1500},
		}
		return berryshp	
	elseif shopId == 'arcade' then
		local arcadeItems = {
			{'FRAME code', 950},
			{'BACKGROUND matrixbackground', 950},
			{'punchingglove', 2500},
			{'loadeddice', 2500},
			{'powerweight', 2500},
			{'powerbracer', 2500},
			{'powerbelt', 2500},
			{'powerlens', 2500},
			{'powerband', 2500},
			{'poweranklet', 2500},
			{'TR77 Grass Knot', 1500},
			{'TR78 Sludge Wave', 1500},
			{'TR79 Heavy Slam', 1500},
			{'TR80 Electro Ball', 1500},
			{'TR81 Foul Play', 1500},
			{'TR82 Stored Power', 1500},
			{'TR83 Ally Switch', 1500},
			{'TR84 Scald', 1500},
			{'TR85 Work Up', 1500},
			{'TR86 Wild Charge', 1500},
			{'TR87 Drill Run', 1500},
			{'TR88 Heat Crash', 1500},
			{'TR89 Hurricane', 1500},
			{'TR90 Play Rough', 1500},
			{'TR91 Venom Drench', 1500},
			{'TR92 Dazzling Gleam', 1500},
			{'TR93 Darkest Lariat', 1500},
			{'TR94 High Horsepower', 1500},
			{'TR95 Throat Chop', 1500},
			{'TR96 Pollen Puff', 1500},
			{'TR97 Psychic Fangs', 1500},
			{'TR98 Liquidation', 1500},
			{'TR99 Body Press', 1500},
			{'TM09 Venoshock', 3000},
			{'TM90 Substitute', 3000},
			{'TM02 Dragon Claw', 3000},
			{'TM29 Psychic', 4000},
			{'audinite', 4000},
			{'destinyknot', 8000},
			{'charizarditeg', 9900},
			{"PKMN Audino",    13000},
			{"PKMN Chansey",    13500},
			{"PKMN Ditto",    15000},
			{"HOVER Mega Salamence Board", 15000},
			{"PKMN Zeraora",16200},
		}
		
		local items = {}
		for _, itemData in pairs(arcadeItems) do
			table.insert(items, processShopItem(self, itemData, false))
		end
		
		local salamenceBoard = {'HOVER Shiny M.Salamence Board', 16000}
		if self.completedEvents.AA50 then
			table.insert(items, processShopItem(self, salamenceBoard, false))
		else
			table.insert(items, {salamenceBoard[1], salamenceBoard[2], true, "Achieve a score of 50 on Alolan Adventure to unlock this board."})
		end
		
		return items
	elseif shopId == 'arcadenew' then
		local arcadeItems = {
			{'FRAME void', 950},
			{'BACKGROUND treasure', 950},
			{'BACKGROUND maybackground', 950},
			{'BACKGROUND ethanbackground', 950},
			{'punchingglove', 2500},
			{'loadeddice', 2500},
			{'powerweight', 2500},
			{'powerbracer', 2500},
			{'powerbelt', 2500},
			{'powerlens', 2500},
			{'powerband', 2500},
			{'poweranklet', 2500},
			{'TR91 Venom Drench', 1500},
			{'TR92 Dazzling Gleam', 1500},
			{'TR93 Darkest Lariat', 1500},
			{'TR94 High Horsepower', 1500},
			{'TR95 Throat Chop', 1500},
			{'TR96 Pollen Puff', 1500},
			{'TR97 Psychic Fangs', 1500},
			{'TR98 Liquidation', 1500},
			{'TR99 Body Press', 1500},
			{'TM09 Venoshock', 3000},
			{'TM90 Substitute', 3000},
			{'TM02 Dragon Claw', 3000},
			{'TM29 Psychic', 4000},
			{'audinite', 4000},
			{'destinyknot', 8000},
			{'charizarditeg', 9900},
			{"PKMN Audino",    13000},
			{"PKMN Chansey",    13500},
			{"PKMN Ditto",    15000},
			{"HOVER Mega Salamence Board", 15000},
			{"PKMN Zeraora",16200},
		}
		
		local items = {}
		for _, itemData in pairs(arcadeItems) do
			table.insert(items, processShopItem(self, itemData, false))
		end
		
		local salamenceBoard = {'HOVER Shiny M.Salamence Board', 16000}
		if self.completedEvents.AA50 then
			table.insert(items, processShopItem(self, salamenceBoard, false))
		else
			table.insert(items, {salamenceBoard[1], salamenceBoard[2], true, "Achieve a score of 50 on Alolan Adventure to unlock this board."})
		end
		
		return items
	elseif shopId == 'pokeport' then
		local pokeportItems = {
			{'energypowder', 900},
			{'energyroot', 950},
			{'zinc', 1200},
			{'iron', 3250},
			{'guardspec', 4000},
			{'hpreset', 245000},
			{'attackreset', 245000},
			{'defensereset', 245000},
			{'spatkreset', 245000},
			{'spdefreset', 245000},
			{'speedreset', 245000},
			{'TM105 Volt Tackle', 650000},
			{'TM106 Iron Tail', 650000},
			{'TM107 Ice Punch', 650000},
			{'TM18 Rain Dance', 650000},
			{'TM108 Fire Punch', 650000},
			{'TM109 Thunder Punch', 650000},
			{'TM111 Fire Spin', 650000},
			{'TM110 Defog', 650000},
			{'TR25 Psyshock', 325000},
			{'TR26 Endure', 325000},
			{'TR27 Sleep Talk', 325000},
			{'TR28 Megahorn', 325000},
			{'TR29 Baton Pass', 325000},
			{'TR30 Encore', 325000},
			{'TR31 Iron Tail', 325000},
			{'TR32 Crunch', 325000},
			{'TR33 Shadow Ball', 325000},
			{'TR34 Future Sight', 325000},
			{'TR35 Uproar', 325000},
			{'TR36 Heat Wave', 325000},
			{'TR37 Taunt', 325000},
			{'TR38 Trick', 325000},
			{'TR39 Superpower', 325000},
			{'TR40 Skill Swap', 325000},
			{'TR41 Blaze Kick', 325000},
			{'TR42 Hyper Voice', 325000},
			{'TR43 Overheat', 325000},
			{'TR44 Cosmic Power', 325000},
			{'TR45 Muddy Water', 325000},
			{'TR46 Iron Defense', 325000},
			{'TR47 Dragon Claw', 325000},
			{'TR48 Bulk Up', 325000},
		}
		
		local items = {}
		for _, itemData in pairs(pokeportItems) do
			table.insert(items, processShopItem(self, itemData, false))
		end
		
		return items
	elseif shopId == 'tickets' then
		local ticketItems = {
			{rc4('tropicsticket'),     220000},
			{rc4('pokemonboxlink'),     1250000},
		}
		local items = {}
		for _, itemData in pairs(ticketItems) do
			table.insert(items, processShopItem(self, itemData, true))
		end
		
		return items
		
	elseif shopId == 'poke' then
		local pokeItems = {
			{"PKMN Random-Shiny", 'r50', 'Obtain a random Shiny Pokemon! Cannot be a legendary or tradable.'},
			{"PKMN Bidoof-Rainbow", 'r100', 'Obtain a Rainbow Bidoof! Cannot be traded.'},
			{"PKMN Mew-Rainbow", 'r200', 'Obtain a Rainbow Mew! Cannot be traded.'},
			{"PKMN Mewtwo-Shadow", 'r400', 'Obtain a Shadow Mewtwo! Cannot be traded.'},
			{"PKMN Random-6x31", 'r100', 'Obtain a random 6x31 Pokemon! Cannot be a legendary or tradable.'},
			{"PKMN Random-Shiny-6x31", 'r200', 'Obtain a random Shiny 6x31 Pokemon! Cannot be a legendary or tradable.'},
		}
		local items = {}
		for _, itemData in pairs(pokeItems) do
			-- Special handling for robux items
			table.insert(items, {itemData[1], itemData[2], false, itemData[3]})
		end
		
		return items
	end
	
	local items = {}
	local badges = self:countBadges()
	
	table.insert(items, {rc4'linkingcord', 'r145', 'LinkingCord'})
	table.insert(items, processShopItem(self, encryptedShop.pmbl2, 0))
	table.insert(items, processShopItem(self, encryptedShop.fsbl2, 0))
	table.insert(items, processBadgeItem(self, encryptedShop.rcdy, 0))  -- Always available
	table.insert(items, processBadgeItem(self, encryptedShop.qcdy, 1))  -- 1 badge
	table.insert(items, processBadgeItem(self, encryptedShop.msbl, 2))  -- 2 badges
	table.insert(items, processBadgeItem(self, encryptedShop.pkbl, 0))  -- Always available
	table.insert(items, processBadgeItem(self, encryptedShop.grbl, 1))  -- 1 badge
	table.insert(items, processBadgeItem(self, encryptedShop.utbl, 3))  -- 3 badges
	table.insert(items, processBadgeItem(self, encryptedShop.ptn, 0))   -- Always available
	table.insert(items, processBadgeItem(self, encryptedShop.sptn, 1))  -- 1 badge
	table.insert(items, processBadgeItem(self, encryptedShop.hptn, 2))  -- 2 badges
	table.insert(items, processBadgeItem(self, encryptedShop.mptn, 4))  -- 4 badges
	table.insert(items, processBadgeItem(self, encryptedShop.frst, 5))  -- 5 badges
	table.insert(items, processBadgeItem(self, encryptedShop.reve, 2))  -- 2 badges
	table.insert(items, processBadgeItem(self, encryptedShop.antd, 0))  -- Always available
	table.insert(items, processBadgeItem(self, encryptedShop.przh, 0))  -- Always available
	table.insert(items, processBadgeItem(self, encryptedShop.awk, 1))   -- 1 badge
	table.insert(items, processBadgeItem(self, encryptedShop.brnh, 1))  -- 1 badge
	table.insert(items, processBadgeItem(self, encryptedShop.iceh, 1))  -- 1 badge
	table.insert(items, processBadgeItem(self, encryptedShop.flhl, 3))  -- 3 badges
	table.insert(items, processBadgeItem(self, encryptedShop.escr, 1))  -- 1 badge
	table.insert(items, processBadgeItem(self, encryptedShop.rpl, 1))   -- 1 badge
	table.insert(items, processBadgeItem(self, encryptedShop.srpl, 2))  -- 2 badges
	table.insert(items, processBadgeItem(self, encryptedShop.mrpl, 3))  -- 3 badges
	
	return items
end
end
