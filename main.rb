class Pokedex
  def initialize
    # Lista para guardar pokemones
    @pl = []
  end

  # Agrega nombre, ataque y defensa de un pokémon a la lista
  def add_pokemon(n, a, d)
    @pl << [n, a, d]
  end

  # Para aumentar el ataque de un pokémon
  def increase_attack(n)
    # Guarda si el pokémon fue encontrado
    f = false
    for pk in @pl
      if pk[0] == n
        pk[1] += 1
        f = true
      end
    end
    if !f
      puts n + " no encontrado"
    end
  end

  # Para aumentar la defensa de un pokémon
  def increase_defense(n)
    # Guarda si el pokémon fue encontrado
    f = false
    for pk in @pl
      if pk[0] == n
        pk[2] += 1
        f = true
      end
    end
    if !f
      puts n + " no encontrado"
    end
  end

  # Para obtener los atributos de un pokémon
  def get_stats(n)
    for pk in @pl
      if pk[0] == n
        puts pk[1].to_s + "/" + pk[2].to_s
      end
    end
  end

  # Se llama al invocar puts sobre una instancia
  def to_s
    i = 0
    temp = ""
    for pk in @pl
      i += 1
      temp += i.to_s + ". " + pk[0] + "\n"
    end
    temp
  end
end

pokedex = Pokedex.new
pokedex.add_pokemon('Pikachu', 12, 10)
pokedex.add_pokemon('Cubone', 8, 12)
pokedex.increase_attack('Pikachu')
pokedex.get_stats('Pikachu')
puts pokedex
