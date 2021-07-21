require "faker"
class GeneradorPalabras

    #creamos un metodo que sea dueño de la clase
    
    
    def self.generar
        al_azar = rand(0..2)
        if al_azar == 0
           
            return generar_planeta
        elsif al_azar ==1
           return generar_palabra_estatica
        elsif al_azar ==2
            return Faker::ProgrammingLanguage.name.downcase
        else
             return Faker::Movies::StarWars.character.downcase
        end
    end
     
    private

    def self.generar_palabra_estatica
        
        palabras_secretas = ["hola", "adios", "ruby"]
        posicion_al_azar = rand(0..palabras_secretas.length-1)
        return palabras_secretas[posicion_al_azar]
    end

    def self.generar_planeta
        return Faker::Space.planet.downcase
    end

    def self.generar_lenguaje_programacion
        return Faker::ProgrammingLanguage.name.downcase
    end

    

end