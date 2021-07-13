suma=0
 # promedio=0
num = 0
opcion=""
while opcion != "1"
    puts "ingrese el valor venta:"
    suma=gets.chomp.to_i
    suma =suma +suma
    num= num+1
    puts "para continuar presione enter, para salir escriba 1"
    opcion =gets.chomp
end
puts "ventas del dia #{suma}"
puts "promedio de ventas #{suma/num}"