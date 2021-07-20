require "csv"


class GestorDatos
     def self.generar_csv(batalla)
        CSV.open("batalla.csv","wb") do |csv|
        csv <<["Local","Visitante","Ganador","Fecha"]
        csv <<[batalla.pokemon_local.nombre,
                batalla.pokemon_visita.nombre,
                batalla.ganador.nombre,
                Time.now]
    end
    end
end