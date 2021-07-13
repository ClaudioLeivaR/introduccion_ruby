numero = rand(10)
puts "Adivina el numero del 1 al 100"
eleccion=0

while(eleccion != numero) do
    puts "Ingresa tu numero:"
        eleccion = gets.chomp.to_i
        if eleccion > numero
            puts "Es un numero mas bajo!"
          
        elsif eleccion < numero
            puts "Es un numero mas alto!"
          
        elsif eleccion == numero
            puts "lo lograste! el numero es #{numero}!!"
        end
end
