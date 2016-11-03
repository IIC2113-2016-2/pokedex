#Pokedex Refractoring
-------------------

Integrantes:
* Baltazar Ochagavia
* Javier Diaz
* Antonio Fontaine

## Code Smells:
* Comments: comentarios excesivos en la clase pokedex
* Primitive Obsession: se usa un arreglo para representar una lista de pokemones, por lo que se agregó la clase pokemons para manejarlos más fácilmente.
* Feature Envy: los métodos de la clase Pokedex usaban mucha información de los Pokemones
* Duplicate Code: había código repetidos en los métodos de Pokedex (increase_attack e increase_defense)

## Tests:
* Agregar ataque a un Pokemon
* Agregar defensa a un Pokemon
* Imprimir Pokedex
* Obtener Stats de un Pokemon registrado en el Pokedex
* Obtener Stats de un Pokemon no registrado (error)
