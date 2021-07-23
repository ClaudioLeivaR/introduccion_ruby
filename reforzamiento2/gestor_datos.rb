require "csv"
class GestorDatos

    #clase encargada de almacenar pedidos
    def self.guardar_pedido(pedido)
        # lógica para guardar el pedido

    end

    def self.generar_csv
        CSV.open("ventas.csv","wb") do |csv|
            
        end
    end


end