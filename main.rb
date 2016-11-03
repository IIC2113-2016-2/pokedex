require_relative 'pokemon'

class Pokedex
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
    selected_pokemons = @pokemon_list.detect { |pokemon| pokemon.name ==  name }
    selected_pokemons.get_stats
  end

  # Se llama al invocar puts sobre una instancia
  def print
    @pokemon_list.each_with_index do |pokemon, index|
      puts index.to_s + ". " + pokemon.name
    end
  end

end


pokedex = Pokedex.new
pokedex.add_pokemon('Pikachu', 12, 10)
pokedex.add_pokemon('Cubone', 8, 12)
pokedex.get_stats('Pikachu')
pokedex.print
