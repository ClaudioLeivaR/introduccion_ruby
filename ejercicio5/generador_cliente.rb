require_relative 'cliente'

class GeneradorClientes

    def self.generar_sin_mascotas(cantidad_clientes)
        lista_de_clientes = []

        for i in 0..cantidad_clientes
            cliente = Cliente.new
            cliente.nombre = Faker::Name.name
            cliente.correo = Faker::Internet.email(
                name: cliente.nombre,
                separators: ".",
                domain: "leiva"
            )
            lista_de_clientes <<cliente
        end
        return lista_de_clientes
    end
    def self.generar_con_mascota
        #codigo para generar con mas cotas
    end