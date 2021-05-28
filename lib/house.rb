class House
	def beginning
		"This is"
	end

	def phrases(number)
		phrases = [
			"the house that Jack built.\n",
			"the malt that lay in",
			"the rat that ate",
			"the cat that killed",
			"the dog that worried",
			"the cow with the crumpled horn that tossed",
			"the maiden all forlorn that milked",
			"the man all tattered and torn that kissed",
			"the priest all shaven and shorn that married",
			"the rooster that crowed in the morn that woke",
			"the farmer sowing his corn that kept",
			"the horse and the hound and the horn that belonged to"
		]
		phrases[number - 1]
	end

	def line(number)
		"#{beginning} #{number.downto(1).collect { |i| phrases(i) }.join(" ")}"
	end

	def recite
		1.upto(12).collect { |i| line(i) }.join("\n")
	end
end

class PirateHouse < House
	def verse(number)
		verse = [
		 "Thar be the house that Jack built.\n",
		 "Thar be the malt that lay in the house that Jack built.\n",
		 "Thar be the rat that ate the malt that lay in the house that Jack built.\n",
		 "Thar be the cat that killed the rat that ate the malt that lay in the house that Jack built.\n",
		 "Thar be the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n",
		 "Thar be the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n",
		 "Thar be the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n",
		 "Thar be the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n",
  	 "Thar be the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n",
  	 "Thar be the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n",
  	 "Thar be the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n",
  	 "Thar be the horse and the hound and the horn that belonged to the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
		]
		verse[number - 1]
	end
end