# El siguiente código define la clase Product y además realiza la lectura del archivo.

class Product
  attr_reader :name
  def initialize(name, *sizes)
    @name = name
    @sizes = sizes.map(&:to_i)
  end
  def average
  @sizes.inject(&:+) /@sizes.size.to_i
  end
end

products_list = []
data = []
File.open('catalogo.txt', 'r') { |file| data = file.readlines}
data.each do |prod|
  ls = prod.split(', ')
  products_list << Product.new(*ls)
end


products_list.each do |product|
  puts "El producto #{product.name} tiene un promedio de #{product.average}"
end


# Se pide:
#
# Optimizar el código implementando el operador splat al momento de instanciar los productos
#
# Generar un método que permita calcular el promedio de precio por producto.
