# lista_palabras = ["ruby", "curso", "telefono", "computador", "teams", "visualcode", "rubyonrails", "github", "ubuntu", "profesor", "codigo"]
# palabra_secreta = lista_palabras[rand(lista_palabras.length)]
# palabra = palabra_secreta.split("")
# palabra_guiones= ["_"]*palabra_secreta.length
# intento = ""
# intentos = 0
# intentos_maximos = 5
# sin_intentos = false


# puts "Adivina la Palabra Secreta"
# while palabra_guiones != palabra and !sin_intentos
#     print palabra_guiones
#     letra_encontrada = false 
#     if intentos < intentos_maximos
#         intento = gets.chomp
#         for i in 0..palabra.length
#             if palabra[i] == intento
#                 palabra_guiones[i] = intento
#                 letra_encontrada = true
#             end
#         end
#         if letra_encontrada == false
#         intentos += 1
#         end
#     else
#         sin_intentos = true
#     end
# end

# if palabra_guiones == palabra
#     puts "Felicitaciones Adivinaste!"
# else
#     puts "Perdiste!"
# end
fallas =0
puts "adivina la palabra clave"
    while fallas == 0

        if letra