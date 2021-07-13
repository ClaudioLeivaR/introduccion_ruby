suma=0
venta=0
num = 0
opcion=""
while opcion != "-1"
    puts "ingrese el valor venta:"
    venta=gets.chomp.to_i
    suma =suma + venta
    num= num+1
    puts "para continuar presione enter, para salir escriba -1"
    opcion =gets.chomp
end
puts "ventas del dia #{suma}"
puts "promedio de ventas #{suma/num}"