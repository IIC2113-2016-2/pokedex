require 'minitest/autorun'

class Pokemon < Minitest::Test
  attr_accessor :attack
  attr_accessor :defense
  attr_accessor :name

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

  def stats
    puts @attack.to_s + '/' + @defense.to_s
  end
end

class Pokedex < Minitest::Test
  attr_accessor :pl

  def initialize
    @pl = []
  end

  def add_pokemon(name, attack, defense)
    @pl << Pokemon.new(name, attack, defense)
  end

  def find_pokemon(name)
    @pl.each do |pk|
      return pk if pk.name == name
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
      temp += i.to_s + '. ' + pk.name + "\n"
    end
    temp
  end
end

class Test < Minitest::Test
  def test_find_pokemon
    pdex = Pokedex.new
    pdex.add_pokemon('charmander', 1, 1)
    pdex.add_pokemon('squirtle', 1, 1)
    found_pk = pdex.find_pokemon('charmander')
    assert_equal found_pk.name, 'charmander'
  end

  def test_pokemon
    pdex = Pokedex.new
    pdex.add_pokemon('charmander', 1, 1)
    assert_instance_of Pokemon, pdex.pl[0]
  end

  def test_inc_attack
    pokemon = Pokemon.new('charmander', 1, 1)
    pokemon.increase_attack
    assert_equal pokemon.attack, 2
  end

  def test_inc_defense
    pokemon = Pokemon.new('charmander', 1, 1)
    pokemon.increase_defense
    assert_equal pokemon.defense, 2
  end

  def test_inc_pokemon_atk
    pdex = Pokedex.new
    pdex.add_pokemon('charmander', 1, 1)
    pdex.add_pokemon('squirtle', 1, 1)
    pdex.increase_attack('charmander')
    found_pk = pdex.find_pokemon('charmander')
    assert_equal found_pk.attack, 2
  end

  def test_inc_pokemon_def
    pdex = Pokedex.new
    pdex.add_pokemon('charmander', 1, 1)
    pdex.add_pokemon('squirtle', 1, 1)
    pdex.increase_defense('charmander')
    found_pk = pdex.find_pokemon('charmander')
    assert_equal found_pk.defense, 2
  end
end

pokedex = Pokedex.new
pokedex.add_pokemon('Pikachu', 12, 10)
pokedex.add_pokemon('Cubone', 8, 12)
pokedex.increase_attack('Pikachu')
pokedex.get_stats('Pikachu')
puts pokedex
