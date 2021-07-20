#estructura que nos permite encapsular
#datos y acxciones - atributos y metodos

class Cliente 
    #datos-variables.atributos
    @nombre
    attr_accessor :correo
    attr_accessor :celular
    attr_accessor :direccion
    attr_accessor :metodo_de_pago_favorito
    attr_accessor :mascota
 
    #acciones - metodos
    #metodo de asignacion - setter
    def nombre= (valor_del_nombre)
        @nombre = valor_del_nombre
    end
    #metodo de devolucioon . getter
    def nombre
        return @nombre
    end

    def mostrar_info
        puts "Mi nombre de cliente es #{@nombre}, 
        mi correo es #{@correo} y he comprado 
        #{@cantidad_compras} veces"
    end
    def mostrar_datos
        puts "mi cnombre de cliente es #{@nombre},
        mi correo es #{@correo}"
    end

    def mostrar_mascota
        puts "mi nombre : #{@nombre} y mi mascota : #{@mascota.nombre}"
    end
end

