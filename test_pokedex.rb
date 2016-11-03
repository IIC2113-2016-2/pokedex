require 'minitest/autorun'
require_relative 'main'

class TestPokedex < Minitest::Test

  def setup
    @pokedex = Pokedex.new
    @pokedex.add_pokemon('Cubone', 8, 12)
  end

  def test_add_pokemon
    @pokedex.add_pokemon('Pikachu', 12, 10)
    assert_equal "Pikachu",@pokedex.pokemon_list[1].name
  end

  def test_find_pokemon
    assert_equal "Cubone",@pokedex.find_pokemon("Cubone").name
  end

  def test_find_pokemon_inexistent
    assert_equal nil,@pokedex.find_pokemon("Jaime")
  end

  def test_increase_attack
    attack_before = @pokedex.pokemon_list[0].attack
    new_attack = @pokedex.increase_attack("Cubone")
    assert_equal attack_before+1,new_attack
  end

  def test_increase_defense
    defense_before = @pokedex.pokemon_list[0].defense
    new_defense = @pokedex.increase_defense("Cubone")
    assert_equal defense_before+1,new_defense
  end

  def test_increase_attack_inexistent
    new_attack = @pokedex.increase_attack("Jaime")
    assert_equal nil,new_attack
  end

  def test_increase_defense_inexistent
    new_defense = @pokedex.increase_defense("Jaime")
    assert_equal nil,new_defense
  end

  def test_get_stats
    assert_equal "8/12", @pokedex.get_stats("Cubone")
  end

  def test_to_s
    assert_equal "1. Cubone\n",@pokedex.to_s
  end

end
