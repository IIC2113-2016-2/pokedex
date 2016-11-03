# Actividad Controlada 5

 - Integrantes:
   - Jose Maria de la Torre
   - Felipe Riquelme
   - Carlos Aguirre

# Code Smells

 1.- Primitive Obsession:
   - Debería existir una clase Pokemon la cual este encargada de incrementar el ataque, incrementar la defense e implementar obtener sus estadisticas.
   - Solucion: Para arreglar este code smell se creó la clase Pokemon la cual tenga todas las caracterisitcas de este ultimo.

2.- Duplicate Code:
  - En increase Attack, defense y get stats se busca al pokemon.
  - Solucion: Crear un metodo en la pokedex el cual se encarge de encontrar el pokemon correspondiente

3.- Comments:
  - En varias partes del codigo existen comentarios innecesarios los cuales no aportan nada al codigo
    - Lista para guardar pokemones
    - Agrega nombre, ataque y defensa de un pokémon a la lista
    - Para aumentar el ataque de un pokémon
    - Guarda si el pokémon fue encontrado
    - Para aumentar la defensa de un pokémon
    - ...
  - Para arreglar este code smell solo dejar comentarios necesarios y que ayuden al desarrollador acelerar el proceso de aprendizaje y no lo relentizen.

# Utilizando el comando Reek

1.- ControlParameter:
  - Los parametros no son facil de leer ya que los nombres no son claros
2.- FeatureEnvy:
  - refers to 'pk' more than self (maybe move it to another class?)
3.- RepeatedConditional:
  - Que se repiten codigo por lo menso 3 veces
4.- UncommunicativeParameterName:
5.- UncommunicativeVariableName
