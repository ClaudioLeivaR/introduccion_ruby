opcion = ""

while opcion != "7"
puts "seleccione una opcion"
puts "1.- uso +-*/ con numeros"
puts "2.- uso +-*/ con cadenas (string)"
puts "3.- uso +-*/ con con array de numeros (array)"
puts "4.- uso +-*/ con cadenas (array)"
puts "5.- que pasa si se hace el siguiente caso hola * 3"
puts "6.- que pasa en el siguiente caso [hola, clase, manzana][-1]"
puts "7.- salir"

    opcion= gets.chomp
    if opcion == "1"
        suma = 8+4
        resta =8-4
        multiplicacion= 8*4
        division=8/4
        puts "el uso de los signos +-*/ con numero en rubi:"
        puts "suma de 8 + 4 = #{suma}"
        puts "resta de 8 - 4 =  #{resta}"
        puts "multiplicacion de 8 * 4 =  #{multiplicacion}"
        puts "division de 8 / 4 =  #{division}"
    
    elsif opcion == "2"
        cad1 = "hola"
        cad2 = "mundo"
        puts "el uso de los signos +-*/ con cadenas en ruby:"
        puts "suma de hola+mundo= #{cad1+cad2} "
        puts "resta de hola-mundo= el simbolo de resta no se  puede utilizar con este tipo de datos "
        puts "multiplicacion de hola+mundo= eñ simbolo de multiplicacion no "
        puts "division de hola+mundo= el simbolo dse division no se puede utilizar "
    
    elsif opcion == "3"

        puts "el uso de los signos +-*/ con un array de numeros en rubi:"
        ar1 = [1,2,3,4]
        ar2 = [5,6,7,8]
        
        puts "suma del array1 + array2 = #{ar1+ar2}"
        puts "resta del array1 - arrya2 =  #{ar1-ar2}"
        puts "multiplicacion del array1 * array2 es imposible"
        puts "pero solo un array si se puede; arra1 * 3 =  #{ar1*3}"
        puts "division de 8 / 4 es imposible en ruby"

    elsif opcion ==4


    
    
    end    

end