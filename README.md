# Pokedex

## Integrantes

* Jaime Yañez
* M. Fernanda sepúlveda

## Code Smells identificados

* Comentarios innecesarios
```ruby
# Agrega nombre, ataque y defensa de un pokémon a la lista
def add_pokemon(name, attack, defense)
  @pl << [n, a, d]
end
```

Lo cambiamos de la siguiente forma

```ruby
def add_pokemon(name, attack, defense)
  @pokemon_list << Pokemon.new(name, attack, defense)
end
```

* Primitive obsession:
Uso de variables primitivas en vez de otras más adecuadas como un hash o clase.

```ruby
class Pokemon
  attr_accessor :name, :attack, :defense
  def initialize(name, attack, defense)
    @name = name
    @attack = attack
    @defense = defense
  end
end
```
* Codigo duplicado: se duplicaba la funcionalidad de buscar en distintos metodos, se creo un metodo para este

```ruby
def find_pokemon(name)
  for pokemon in @pokemon_list
    if pokemon.name == name
      return pokemon
    end
  end
  return nil
end
```
