return function(_f)
	local MegaColors = {
		Venusaur   = {{'Artichoke','Bright red'},{'Sea green','Bright yellow'}},
		CharizardX = {{'Black','Cyan'},{'Bright bluish green','Crimson'}},
		CharizardY = {{'Bright orange','Bright bluish green'},{'Lavender','Crimson'}},
		Charizard = {{'Bright orange','Bright bluish green'},{'Lavender','Crimson'}},
		Blastoise  = {{'Brown','Bright blue'},{'Earth green','Alder'}},
		Lapras  = {{'Brown','Bright blue'},{'Earth green','Alder'}},
		Alakazam   = {{'Brown','Bright yellow'},{'Lilac','Bright yellow'}},
		Gengar     = {{'Mulberry','Pink'},{'White','Mauve'}},
		GengarH    = {{'Black','Black'},{'Bright orange','Bright green'}},
		Kangaskhan = {{'Brown','Medium blue'},{'Cloudy grey','Alder'}},
		Pinsir     = {{'Flint','Pastel blue-green'},{'Alder','Pastel blue-green'}},
		Gyarados   = {{'Bright blue','Persimmon'},{'Bright red','White'}},
		Aerodactyl = {{'Medium stone grey','Alder'},{'Alder','Electric blue'}},
		MewtwoX    = {{'Carnation pink','Sunrise'},{'Lime green','Fossil'}},
		MewtwoY    = {{'Sunrise','White'},{'Mint','White'}},
		Ampharos   = {{'Bright yellow','White'},{'Mauve','White'}},
		Scizor     = {{'Bright red','Bright blue'},{'Br. yellowish green','Bright yellow'}},
		Heracross  = {{'Bright blue','Bright red'},{'Carnation pink','Bright red'}},
		Houndoom   = {{'Dark stone grey','Bright orange'},{'Storm blue','Bright red'}},
		Tyranitar  = {{'Medium green','Bright red'},{'Daisy orange','Alder'}},
		Blaziken   = {{'Bright red','Bright orange'},{'Gold','Neon orange'}},
		Gardevoir  = {{'Mint','White','Persimmon'},{'Smoky grey','Medium blue','Bright orange'}},
		Mawile     = {{'Dark stone grey','Lavender'},{'Lilac','Bright violet'}},
		Aggron     = {{'Dark stone grey','White'},{'Bright bluish green','Brick yellow'}},
		Medicham   = {{'Pink','Fossil'},{'Steel blue','Cork'}},
		Manectric  = {{'Daisy orange','Medium blue'},{'Smoky grey','Bright yellow'}},
		Banette    = {{'Smoky grey','Pink'},{'Storm blue','Pink'}},
		Absol      = {{'Sand blue','White'},{'Persimmon','Pastel orange'}},
		Garchomp   = {{'Lavender','Bright red'},{'Lilac','Hot pink'}},
		Lucario    = {{'Bright bluish green','Black'},{'Olive','Sand blue'}},
		Abomasnow  = {{'Bright bluish green','White','Medium blue'},{'Storm blue','White','Medium blue'}},
		Beedrill   = {{'Black','Bright yellow'},{'Black','Bright green'}},
		Pidgeot    = {{'Nougat','Persimmon','Brick yellow'},{'Br. yellowish orange','Daisy orange','Bright violet'}},
		Slowbro    = {{'Baby blue','Light reddish violet'},{'Cork','Alder'}},
		Steelix    = {{'Fossil','White'},{'Daisy orange','White'}},
		Sceptile   = {{'Moss','Persimmon'},{'Bright bluish green','Daisy orange'}},
		Swampert   = {{'Cyan','Bright orange'},{'Carnation pink','Bright orange'}},
		Sableye    = {{'Lavender','Persimmon'},{'Gold','Bright green'}},
		Sharpedo   = {{'Electric blue','White'},{'Lilac','Mauve'}},
		Camerupt   = {{'Smoky grey','Neon orange'},{'Smoky grey','Neon orange'}},
		Altaria    = {{'Pastel Blue','White'},{'Cool yellow','White'}},
		Glalie     = {{'White','Bright blue'},{'White','Bright red'}},
		Salamence  = {{'Cyan','Bright red'},{'Lime green','Neon orange'}},
		Metagross  = {{'Cyan','Fossil'},{'Fossil','Bright yellow'}},
		Latias     = {{'Pastel violet','White','Bright red'},{'Neon green','White','Bright yellow'}},
		Latios     = {{'Pastel violet','White','Bright blue'},{'Neon green','White','Bright bluish green'}},
		Rayquaza   = {{'Dark green','Bright yellow'},{'Black','Bright yellow'}},
		Lopunny    = {{'Brown','Beige'},{'Linen','Pink'}},
		Gallade    = {{'White','Bright green'},{'White','Bright blue'}},
		Audino     = {{'White','Carnation pink'},{'White','Alder'}},
		Clefable  = {{'Lilac','Alder'},{'Dark green','Salmon'}},
		Victreebel  = {{'Earth green','Salmon'},{'Lime green','Deep blue'}},
		Starmie  = {{'Electric blue','Lilac'},{'Navy blue','Deep blue'}},
		Dragonite  = {{'Daisy orange','Beige'},{'Pastel Blue','Beige'}},
		Meganium  = {{'Forest green','Carnation pink'},{'Lime green','Gold'}},
		Feraligatr  = {{'Medium blue','Bright red'},{'Medium blue','Bright blue'}},
		Skarmory  = {{'Gold','Black'},{'Ghost grey','Lime green'}},
		Froslass  = {{'Pearl','Br. yellowish orange'},{'Pearl','Pink'}},
		Emboar  = {{'Deep orange','Bright red'},{'Deep orange','Bright blue'}},
		Excadrill  = {{'Medium brown','Neon orange'},{'Dusty Rose','Neon orange'}},
		Scolipede  = {{'Hurricane grey','Mulberry'},{'Hurricane grey','Toothpaste'}},
		Scrafty  = {{'Bright orange','Pearl'},{'Bright orange','Smoky grey'}},
		Eelektross  = {{'Electric blue','Pearl'},{'Slime green','Pearl'}},
		Chandelure  = {{'Bright violet','Black'},{'Deep orange','Cocoa'}},
		Chesnaught  = {{'Parsley green','Pearl'},{'Sea green','Cocoa'}},
		Delphox  = {{'Crimson','Mulberry'},{'Crimson','Fossil'}},
		Greninja  = {{'Electric blue','Cyan'},{'Black','Cyan'}},
		Pyroar  = {{'Bright red','New Yeller'},{'Institutional white','New Yeller'}},
		Malamar  = {{'Deep blue','Magenta'},{'New Yeller','Bright red'}},
		Barbaracle  = {{'Deep orange','Black'},{'Salmon','Earth green'}},
		Dragalge  = {{'Bright violet','Crimson'},{'Mulberry','Camo'}},
		Hawlucha  = {{'Black','Gold'},{'Black','Gold'}},
		Zygarde  = {{'Black','Lime green'},{'Pearl','Lime green'}},
		Drampa  = {{'Steel blue','Black'},{'Gold','Black'}},
		Falinks  = {{'Bright orange','Pearl'},{'Bright orange','Smoky grey'}},
		RaichuX    = {{'Bright yellow','Cyan'},{'Bright orange','Electric blue'}},
		RaichuY    = {{'Nougat','White'},{'Daisy orange','Pastel Blue'}},
		Chimecho   = {{'Mulberry','Cyan'},{'Bright violet','Carnation pink'}},
		AbsolZ     = {{'Dark stone grey','Crimson'},{'Black','Bright red'}},
		GarchompZ  = {{'Storm blue','Gold'},{'Black','Bright yellow'}},
		LucarioZ   = {{'Black','Gold'},{'Bright blue','Neon orange'}},
		Staraptor  = {{'Pearl','Dark stone grey'},{'Neon orange','Dark stone grey'}},
		Tatsugiri  = {{'Bright red','White'},{'Deep orange','Pastel Blue'}},
		Golurk     = {{'Dark stone grey','Lime green'},{'Teal','Bright yellow'}},
		Meowstic   = {{'Pearl','Medium blue'},{'Carnation pink','Mulberry'}},
		Heatran    = {{'Reddish brown','Bright blue'},{'Dark stone grey','Neon orange'}},
		Glimmora   = {{'Carnation pink','Mulberry'},{'Lilac','Bright violet'}},
		Darkrai    = {{'Black','Crimson'},{'Black','Bright blue'}},
		Crabominable = {{'Pearl','Baby blue'},{'Bright blue','Bright red'}},
		Scovillain = {{'Bright red','Earth green'},{'Crimson','Lime green'}},
		Zeraora    = {{'Bright yellow','Black'},{'Cyan','Black'}},
		Magearna   = {{'Pearl','Carnation pink'},{'Fossil','Hot pink'}},
		Baxcalibur = {{'Medium blue','Pearl'},{'Dark blue','Cyan'}},
		Diancie    = {{'White','Pink'},{'Black','Pink'}},
		Cacturne   = {{'Earth green','Black'},{'Dusty Rose','Black'}},
		Noivern    = {{'Mulberry','Black'},{'Cyan','Black'}},
		Electivire = {{'Deep orange','Black'},{'Neon orange','Black'}},
		Magmortar  = {{'Mulberry','Burgundy'},{'Black','Deep orange'}},
		Honchkrow  = {{'White','Black'},{'Pink','Black'}},
		Mienshao   = {{'White','Mulberry'},{'White','Lilac'}},
		Golisopod  = {{'White','Mulberry'},{'White','Bright red'}},
		Kingdra	   = {{'Cyan','Bright yellow'},{'Pink','Bright yellow'}},
		Heatmor	   = {{'Brown','Bright red'},{'Black','Bright red'}},
		Durant	   = {{'Smoky grey','Black'},{'Gold','Black'}},
		Hydreigon  = {{'Electric blue','Black'},{'Dark green','Black'}},
	}

	do
		local cache = {['Neon orange']=1005}
		local default = BrickColor.new('aofpisjadf')
		for name, t in pairs(MegaColors) do
			for i, set in pairs(t) do
				for j, color in pairs(set) do
					local n = cache[color]
					if n then
						set[j] = n
					else
						local bc = BrickColor.new(color)
						if bc == default and color ~= 'Medium stone grey' then
							error('typo in color for '..name..': '..color, 0)
						end
						n = bc.Number
						cache[color] = n
					end
				end
			end
		end
	end

	local zMoveTableSig = {
		Incineroar = "Malicious Moonsault",
		Mew = "Genesis Supernova"
	}

	return {
		MegaColors = MegaColors,
		zMoveTableSig = zMoveTableSig
	}
end
