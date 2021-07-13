#arreglo_mixto = ["rene", 23, "adios", 75, "gato", false, 76.5]
arreglo_numeros = [1,2,3,4,5,6,7,8,9,2,0,4,5,6]

total = 0
arreglo_nuevo = arreglo_numeros.select do |n|
    n.odd? #muestra impares
end

puts arreglo_nuevo