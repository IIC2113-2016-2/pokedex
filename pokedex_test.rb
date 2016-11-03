require_relative 'main.rb'
require 'minitest/autorun'


describe 'Pokedex test' do

  def setup
    @pokedex = Pokedex.new
    pikachu = Pokemon.new('Pikachu', 12, 10)
    cubone = Pokemon.new('Cubone', 8, 12)
    @pokedex.add_pokemon(pikachu)
    @pokedex.add_pokemon(cubone)
  end

  it 'should have Pikachu and Cubone' do
    @pokedex.to_s.must_equal("1. Pikachu\n2. Cubone\n")
  end

end