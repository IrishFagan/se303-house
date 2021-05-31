class House
	def beginning
		"This is"
	end

	def lineEnd
		"the house that Jack built.\n"
	end

	def phrases
		phrases = [
			"",
			"the malt that lay in ",
			"the rat that ate ",
			"the cat that killed ",
			"the dog that worried ",
			"the cow with the crumpled horn that tossed ",
			"the maiden all forlorn that milked ",
			"the man all tattered and torn that kissed ",
			"the priest all shaven and shorn that married ",
			"the rooster that crowed in the morn that woke ",
			"the farmer sowing his corn that kept ",
			"the horse and the hound and the horn that belonged to "
		]
	end

	def phrase(number)
		phrase = phrases
		phrase[number - 1]
	end

	def line(number)
		"#{beginning} #{number.downto(1).collect { |i| phrase(i) }.join("")}#{lineEnd}"
	end

	def recite
		1.upto(12).collect { |i| line(i) }.join("\n")
	end
end

class PirateHouse < House
	def beginning
		"Thar be"
	end
end

class RandomHouse < House
	
end