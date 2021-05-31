class House
	def beginning
		"This is"
	end

	def phrases
		phrases = [
			"",
			" the malt that lay in",
			" the rat that ate",
			" the cat that killed",
			" the dog that worried",
			" the cow with the crumpled horn that tossed",
			" the maiden all forlorn that milked",
			" the man all tattered and torn that kissed",
			" the priest all shaven and shorn that married",
			" the rooster that crowed in the morn that woke",
			" the farmer sowing his corn that kept",
			" the horse and the hound and the horn that belonged to"
		]
	end

	def phrase(number)
		phrases[number - 1]
	end

	def line(number)
		"#{beginning}#{number.downto(1).collect { |i| phrase(i) }.join("")} the house that Jack built.\n"
	end

	def recite(verbose = false)
		if verbose
			puts 1.upto(12).collect { |i| line(i) }.join("\n")
		end
		1.upto(12).collect { |i| line(i) }.join("\n")
	end
end

class PirateHouse < House
	def beginning
		"Thar be"
	end
end

class RandomHouse < House
	def phrases
		phrase = super
		phrase[1,phrase.length] = phrase[1,phrase.length].shuffle
		return phrase
	end
end

class RandomPirateHouse < House
	def initialize
		@random_house = RandomHouse.new
		@pirate_house = PirateHouse.new
	end

	def beginning
		@pirate_house.beginning
	end

	def phrases
		@random_house.phrases
	end
end