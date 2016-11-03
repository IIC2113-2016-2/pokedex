require 'minitest/autorun'

class Pokemon < Minitest::Test
  def initialize(name, attack, defense)
    @attack = attack
    @name = name
    @defense = defense
  end

  def increase_attack
    @attack += 1
  end

  def increase_defense
    @defense += 1
  end

  def get_name
    @name
  end

  def stats
    puts @attack.to_s + '/' + @defense.to_s
  end
end

class Pokedexn < Minitest::Test
  def initialize
    @pl = []
  end

  def add_pokemon(name, attack, defense)
    @pl << Pokemon.new(name, attack, defense)
  end

  def find_pokemon(name)
    @pl.each do |pk|
      return pk if pk.get_name == name
    end
    nil
  end

  def increase_attack(name)
    pk = find_pokemon(name)
    if pk
      pk.increase_attack
    else
      puts name + ' no encontrado'
    end
  end

  def increase_defense(name)
    pk = find_pokemon(name)
    if pk
      pk.increase_defense
    else
      puts name + ' no encontrado'
    end
  end

  def get_stats(name)
    pk = find_pokemon(name)
    if pk
      pk.stats
    else
      puts name + ' no encontrado'
    end
  end

  # Se llama al invocar puts sobre una instancia
  def to_s
    i = 0
    temp = ''
    @pl.each do |pk|
      i += 1
      temp += i.to_s + '. ' + pk.get_name + "\n"
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
