class Pokemon
	attr_accessor :name, :attack, :defense
	def initialize(name, attack, defense)
		@name = name
		@attack = attack
		@defense = defense
	end

	def increase_attack
		@attack += 1
	end

	def increase_defense
	    @defense += 1
	end

	# Para obtener los atributos de un pokémon
  	def get_stats
	    puts @attack.to_s + "/" + @defense.to_s
  	end

end