require_relative 'main.rb'
require 'minitest/autorun'

describe 'Pokedex add pokemon' do
  def setup
    @pokedex = Pokedex.new
  end

  it 'adds pokemon' do
    @pokedex.add_pokemon('Pikachu', 12, 10)
    assert_equal(@pokedex.pl[0].name, 'Pikachu')
    assert_equal(@pokedex.pl[0].attack, 12)
    assert_equal(@pokedex.pl[0].defense, 10)
  end
end

describe 'increase stats' do
  def setup
    @pokedex = Pokedex.new
    @pokedex.add_pokemon('Pikachu', 12, 10)
  end
  it 'increases attack correctly' do
    attack_1 = @pokedex.pl[0].attack
    @pokedex.increase_stat('Pikachu', :attack)
    assert_equal(@pokedex.pl[0].attack, attack_1 + 1)
  end

  it 'increases defense correctly' do
    defense_1 = @pokedex.pl[0].defense
    @pokedex.increase_stat('Pikachu', :defense)
    assert_equal(@pokedex.pl[0].defense, defense_1 + 1)
  end
end

describe 'gets stats' do
  def setup
    @pokedex = Pokedex.new
    @pokedex.add_pokemon('Pikachu', 12, 10)
  end

  it 'gets stats correctly' do
    assert_equal(@pokedex.pl[0].get_stats, "12/10")
  end
end
