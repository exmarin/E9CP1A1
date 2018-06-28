# Crea una clase llamada Dog cuyo constructor reciba como argumento un hash con la siguiente estructura:

propiedades = {nombre: 'Beethoven', raza: 'San Bernardo', color: 'Café'}
# Instanciar un nuevo perro a partir de las propiedades contenidas en el hash. Luego generar un método llamado ladrar que, mediante interpolación, imprima "Beethoven está ladrando!"
class Dog
  attr_accessor :nombre
  def initialize(propiedades)
    @nombre = propiedades[:nombre]

  end

  def ladrar
    puts "#{@nombre} esta ladrando!"
  end
end

perro = Dog.new(propiedades)
puts perro.ladrar
