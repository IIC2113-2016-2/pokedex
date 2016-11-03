class Pokemon
  attr_accessor :name, :attack, :defense

  def initialize(n, a, d)
    @name = n
    @attack = a
    @defense = d
  end

  def increase_attack
    @attack += 1
  end

  def increase_defense
    @defense += 1
  end

  def get_stats
    @attack.to_s + "/" + @defense.to_s
  end
end

class Pokedex
  attr_accessor :pl
  def initialize
    # Lista para guardar pokemones
    @pl = []
  end

  def add_pokemon(n, a, d)
    @pl << Pokemon.new(n, a, d)
  end

  # Para aumentar un atributo del pokemon
  def increase_stat(n, stat)
    # Guarda si el pokémon fue encontrado
    f = false
    for pk in @pl
      if pk.name == n
        if stat == :attack
          pk.increase_attack
        elsif stat == :defense
          pk.increase_defense
        else
          puts 'Atributo Invalido'
        end          
        f = true
      end
    end
    if !f
      puts n + " no encontrado"
    end
  end

  def get_stats(n)
    for pk in @pl
      if pk.name == n
        pk.get_stats
      end
    end
  end

  # Se llama al invocar puts sobre una instancia
  def to_s
    i = 0
    temp = ""
    for pk in @pl
      i += 1
      temp += i.to_s + ". " + pk.get_stats + "\n"
    end
    temp
  end
end

pokedex = Pokedex.new
pokedex.add_pokemon('Pikachu', 12, 10)
pokedex.add_pokemon('Cubone', 8, 12)
pokedex.increase_stat('Pikachu', :attack)
pokedex.get_stats('Pikachu')
puts pokedex
