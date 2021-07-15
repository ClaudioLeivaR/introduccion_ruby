# Dólares ->Pesos colombianos
# Pesos ->chilenos Dólares
# Dólares ->Soles
require_relative("modulo_divisas") #nombre archivo
include ModuloDivisas               #nombre modulo
#entrada
puts "ingrese el monto para convertir:"
montos = gets.chomp.to_i

puts "Escoja una opcion:"
puts "=================="
puts "1. Dolares = COP"
puts "2. CLP = Dolares"
puts "3. Dolares = Soles"
convertir = gets.chomp



if convertir == "1"
    convertir_dolar_peso_colombiano(montos)
elsif convertir == "2"
    convertir_clp_dolar(montos)
elsif convertir == "3"
    convertir_dolar_soles(montos)
else
    puts "divisa no encontrada"
end