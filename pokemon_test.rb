require_relative 'main.rb'
require 'minitest/autorun'


describe 'Pokemon test' do

  def setup
    @pikachu = Pokemon.new('Pikachu', 5, 10)  # Pikachu, 5 atk, 10 def.
  end

  it 'should be named Pikachu' do
    @pikachu.nombre.must_equal('Pikachu')
  end

  it 'should have 5 atk and 10 def' do
    @pikachu.get_stats.must_equal('5 / 10')
  end

  it 'should increase atk' do
    @pikachu.ataque.must_equal(5)
    @pikachu.increase_atk
    @pikachu.ataque.must_equal(6)
  end

  it 'should increase def' do
    @pikachu.defensa.must_equal(10)
    @pikachu.increase_def
    @pikachu.defensa.must_equal(11)
  end

end

