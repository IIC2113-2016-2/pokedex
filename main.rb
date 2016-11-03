class Pokemon
  attr_reader :nombre, :ataque, :defensa
  def initialize(nombre, ataque, defensa)
    @nombre = nombre
    @ataque = ataque
    @defensa = defensa
  end

  def increase_atk(number=1)
    @ataque += number
  end

  def increase_def(number=1)
    @defensa += number
  end

  def get_stats()
    "#{@ataque} / #{@defensa}"
  end

end

class Pokedex
  def initialize
    # Lista para guardar pokemones
    @pl = []
  end

  # Agrega nombre, ataque y defensa de un pokémon a la lista
  def add_pokemon(poke)
    @pl << poke
  end

  def find_pokemon(_name)
    @pl.each do |pk|
      if pk.nombre == _name
        return pk
      else
        puts _name + " no encontrado"
      end
    end
  end


  # Se llama al invocar puts sobre una instancia
  def to_s
    i = 0
    temp = ""
    for pk in @pl
      i += 1
      temp += i.to_s + ". " + pk.nombre + "\n"
    end
    temp
  end
end

pokedex = Pokedex.new
pikachu = Pokemon.new('Pikachu', 12 , 10)
cubone = Pokemon.new('Cubone', 8, 12)
pokedex.add_pokemon(pikachu)
pokedex.add_pokemon(cubone)
pokedex.find_pokemon("Pikachu").increase_atk(1)
puts pokedex.find_pokemon('Pikachu').get_stats()
puts pokedex
