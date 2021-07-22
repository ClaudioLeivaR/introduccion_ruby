#software de pedidos
#mostrar productos al usuario y el los puede agregar al pedido
#cuando ya no quiera mas productos, el pedido se guarda en un . csv
#crear un generador de pedidos para que gestione el menu
require_relative "ventas"


comando = ""
while comando != "n"
    venta = Venta.new
    venta.comenzar

    puts "¿Quiere hacer otro pedido? (s/n)"
    comando = gets.chomp
end




#crear nuestro pedido


#p= GeneradorProductos.generar


#van a crear una lista de 200 pructos

# 200.time do
#     puts "hola"
# end
# productos = Array.new #[]

# for i in 0..199
#     productos << GeneradorProductos.generar
# end

# # productos.each do |producto|
# #     puts "#{producto.nombre}"
# # end

# filtrados = productos.select do |producto|
#             producto.precio > 20000
# end

# precios = productos.map do |p|
#     p.precio
# end

# puts precios.sum
