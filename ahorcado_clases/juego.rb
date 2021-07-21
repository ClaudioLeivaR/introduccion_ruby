require_relative "generador_palabras"
class Juego

    attr_reader :palabra_secreta
    attr_reader :vidas


    def initialize
         #relacion de asociacion / dependencia
        @palabra_secreta = GeneradorPalabras.generar
        @vidas=5

    end

    def comenzar
        puts "Bienvenido al ahorcado, adivina la palabra..."
        puts "ingresa una letra:"
        guiones = cambiar_letras_a_guiones_1
        print guiones
        while guiones.gsub(" ", "") != @palabra_secreta and @vidas > 0
            puts "vidas:  #{@vidas}"
            letra = gets.chomp
            letra_encontrada = false

            for posicion_letra in 0.. @palabra_secreta.length-1
                    if @palabra_secreta[posicion_letra] == letra
                        guiones[posicion_letra*2] = letra
                        letra_encontrada=true
                    end
                
            end

            if letra_encontrada == false
                @vidas -= 1
                puts "error"
            end

            puts guiones
            #preguntar si esta letra existe en mi palabra
            #si existe, cambiar el guion por la letra

        end
       he_ganado?
    end


    # def cambiar_letras_a_guiones_2
    #     for i in 0..@palabra_secreta.length-1
    #         print "_  "
    #     end
    # end
    private #de aca para abajo todo es privado
    def cambiar_letras_a_guiones_1
       return "_ " * @palabra_secreta.length
    end

    def he_ganado?
        if @vidas > 0
            puts "Gnaste!! 😎😃😎"
            else
                puts"AHORCADO!!! ☠💀☠"
        end
        puts "la palabra era #{@palabra_secreta}" 
    end
end