require_relative "generador_texto"
require_relative "observador_teclado"

class Sesion
    attr_reader :texto_guia_lista
    attr_reader :texto_guia
    attr_reader :tiempo_inicial

    def initialize(cant_letras)
        @texto_guia_lista = GeneradorTexto.letras(cant_letras)
        @texto_guia = @texto_guia_lista.join
        @tiempo_inicial = Time.now
    end

    #deberia controlar la UI - consola
    def iniciar

        texto_ingresado = ""
        while texto_ingresado != @texto_guia
            system("clear")
            
            puts "\t|---Mecanografia---|"

        @texto_guia_lista.each do |letra|
        print "#{letra} \t"
        end
        puts
        print texto_ingresado
        
        system("stty raw -echo")
        letra_ingresada = STDIN.getc
            
        futura_cadena = texto_ingresado + letra_ingresada
            
        evaluacion = ObservadorTeclado.validar_con_espacios(@texto_guia, futura_cadena)

        if evaluacion
            texto_ingresado += letra_ingresada
            print texto_ingresado
        end

        end

    end
end