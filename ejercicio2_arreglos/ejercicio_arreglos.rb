#entrada
numeros = "1, 4, 5, 7, 46, 87, 4, 6, 8, 9, 200, 6, 4, 5, 78, 34, 567, 567, 7, 4, 4, 3, 5, 7, 8, 8 ,8, 9, 86, 75, 75, 56"
opcion = "" #aqui podemos guardae lo que usuario escriba
#salida
suma =0
resta=0
pares=0
impares=0
mayor=0
menor=0

#proceso
while opcion != "salir"

    puts "escribir una de las opciones: suma, resta, pares, impares, mayor, menor"
    opcion = gets.chomp
    arreglo_numeros = numeros.split(",")
    if opcion == "suma"
        #sumar todos los numeros
        for i in 0..arreglo_numeros.length
            suma += arreglo_numeros[i].to_i
        end    
        puts "la suma total es #{suma} de la lista de los numeros"
    elsif opcion == "resta"
            #restar todos los numeros
            for i in 0..arreglo_numeros.length
                resta -= arreglo_numeros[i].to_i
            end    
            puts "la resta total es #{resta} de la lista de los numeros"
    elsif opcion == "pares"

    elsif opcion == "impares" 

    elsif opcion == "mayor" 

    elsif opcion == "menor" 

    else
        puts"error"      
    end
end
