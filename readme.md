# Grupo 2

## Integrantes

Nombre               | GitHub          | Email
------------------  | --------------- | ----------------
Benjamin Ibarra     | [@btibarra]     | [btibarra@uc.cl]
Sebastian Butorovic | [@sibutorovic]  | [sibutorovic@uc.cl]
Cristobal Martinez  | [@cnmartinez]   | [cnmartinez@uc.cl]


## Code Smells

### Primitive Obssesion

Se puede ver este code smell en que los pokemones son guardados en arreglos, esto se arregló creando una clase que agrupa las características de un pokemon.

### Duplicated Code

Se puede encontrar este code smell cuando se busca un pokemón en los métodos de aumentar ataque y defensa, para solucionarlo se crea un método find_pokemon(pokemon) para buscar los pokemones.

### Inappropriate

Se puede ver un acceso inapropiado (leer y modificar) a los datos de los pokemones por parte del pokedex, para solucionarlo se agrega que solo se puedan leer los atributos de los pokemones en la clase.
