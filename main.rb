require_relative 'pokemon'

class Pokedex

  attr_accessor :pokemon_list
  def initialize
    # Lista para guardar pokemones
    @pokemon_list = []
  end

  # Agrega nombre, ataque y defensa de un pokémon a la lista
  def add_pokemon(name, attack, defense)
    pokemon = Pokemon.new(name, attack, defense)
    @pokemon_list << pokemon
  end

  def get_stats(name)
    pokemon = @pokemon_list.detect { |pokemon| pokemon.name ==  name }
    if pokemon != nil
      pokemon.get_stats
    else
      puts 'pokemon not found'
    end
    
  end

  # Se llama al invocar puts sobre una instancia
  def print
    @pokemon_list.each_with_index do |pokemon, index|
      count = index + 1
      puts count.to_s + ". " + pokemon.name
    end
  end

end


pokedex = Pokedex.new
pokedex.print
pokedex.get_stats('hola')
pokedex.add_pokemon('Pikachu', 12, 10)
pokedex.add_pokemon('Cubone', 8, 12)
pokedex.get_stats('Pikachu')
pokedex.print
