monto = 0
dolar=0
clp=0
sol=0
peso_col=0
puts "ingrese el monto en dolares para convertir a pesos colombianos:"
monto1 = gets.chomp
puts "ingrese el monto en pesos chilenos para convertir a dolares:"
monto2=gets.chomp
puts "ingrese el monto en dolares para convertir a soles:"
monto3=gets.chomp

puts "Entrada\t\tSalida"
puts "=======\t\t======"
puts "#{monto1}\t\t#{3795.47*monto1.to_i}"
puts "#{monto2}\t\t#{0.0013*monto2.to_i}"
puts "#{monto3}\t\t#{3.98*monto3.to_i}"
