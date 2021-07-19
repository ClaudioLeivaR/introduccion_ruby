class Mascota
    attr_accessor :nombre
    attr_accessor :peso
    attr_accessor :edad
    attr_accessor :raza
    attr_accessor :cliente
 
    def mostrar_mascota
        puts "nombre: #{@nombre},
        peso: #{@peso},
        raza: #{@raza},
        edad: #{@edad}
        "

    end
    
end