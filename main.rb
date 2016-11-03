class Pokemon
  attr_accessor :name, :attack, :defense
  def initialize(name, attack, defense)
    @name = name
    @attack = attack
    @defense = defense
  end

end

class Pokedex
  attr_accessor :pokemon_list
  def initialize
    @pokemon_list = []
  end

  def add_pokemon(name, attack, defense)
    @pokemon_list << Pokemon.new(name, attack, defense)
  end

  def find_pokemon(name)
    for pokemon in @pokemon_list
      if pokemon.name == name
        return pokemon
      end
    end
    return nil
  end

  def increase_attack(name)
    pokemon = find_pokemon(name)
    if pokemon.nil?
      puts name + " no encontrado"
    else
      pokemon.attack += 1
    end
  end

  def increase_defense(name)
    pokemon = find_pokemon(name)
    if pokemon.nil?
      puts name + " no encontrado"
    else
      pokemon.defense += 1
    end
  end

  def get_stats(name)
    pokemon = find_pokemon(name)
    if !pokemon.nil?
        puts pokemon.attack.to_s + "/" + pokemon.defense.to_s
        pokemon.attack.to_s + "/" + pokemon.defense.to_s
    end
  end

  # Se llama al invocar puts sobre una instancia
  def to_s
    i = 0
    temp = ""
    for pk in @pokemon_list
      i += 1
      temp += i.to_s + ". " + pk.name.to_s + "\n"
    end
    temp
  end
end

pokedex = Pokedex.new
pokedex.add_pokemon('Pikachu', 12, 10)
pokedex.add_pokemon('Cubone', 8, 12)
pokedex.increase_attack('Pikachu')
pokedex.get_stats('Pikachu')
puts pokedex
