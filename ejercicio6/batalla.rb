require_relative "generador"
require_relative "gestor_datos"

class Batalla
    attr_reader :pokemon_local
    attr_reader :pokemon_visita
    attr_reader :ganador

    def initialize(fuerte =  true) #costructores
        puts "inicializando batalla"
        if fuerte == true
        @pokemon_local = GeneradorPokemon.generar_fuertes
        @pokemon_visita = GeneradorPokemon.generar_fuertes
        else
            @pokemon_local = GeneradorPokemon.generar
            @pokemon_visita = GeneradorPokemon.generar
        end
    end

    def simular
        while @pokemon_local.vida > 0 and @pokemon_visita.vida >0
            if @pokemon_local.vida > 0
                @pokemon_local.atacar(@pokemon_visita)
                puts @pokemon_visita.mostrar
            end
                
                sleep 2
                
            if @pokemon_visita.vida > 0
                @pokemon_visita.atacar(@pokemon_local)
                puts @pokemon_local.mostrar
            end
                
                 sleep 2

        end

        quien_gano

    end

    def quien_gano
        puts "#{@pokemon_local.nombre} VS #{@pokemon_visita.nombre}"
        if  @pokemon_local.vida <=0
            @ganador = @pokemon_visita
                puts "#{@pokemon_visita.nombre} gano"
        end
        if @pokemon_visita.vida <=0
            @ganador = @pokemon_local
                 puts "#{@pokemon_local.nombre} gano"
        end

        GestorDatos.generar_csv(self)

    end
end