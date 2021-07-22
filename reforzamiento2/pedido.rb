require "faker"

class  Pedido
    attr_reader     :codigo
    attr_reader     :total    #suma total pedido
    attr_accessor   :productos #almacenar una lista de productos
    attr_reader     :fecha_creacion #fecha de hoy
    attr_accessor   :fecha_entrega #sumar a la fecha de hoy 2 dias
    attr_reader     :estado   #recibido, preparando, enviado, entregado
    

    def initialize
        @codigo         =   Faker::Barcode.ean
        @total          =   0
        @productos        =   []
        @fecha_creacion =   Time.now.strftime("%d/%m/%Y")
        @fecha_entrega  =   Faker::Date.forward(days: 2).strftime("%d/%m/%Y")
        @estado         =   "preparando"
    end

    def mostrar_resumen
        puts "====RESUMEN PEDIDO===="
        puts "Codigo        : #{self.codigo}"
        puts "Fecha Creacion: #{self.fecha_creacion}"
        puts "Fecha entrega : #{self.fecha_entrega}"
        puts "Estado        : #{self.estado}"

        self.productos.each do |producto|
            puts "#{producto.nombre} \t #{producto.precio}"
        end
        puts"---------------------------------------------------"
        puts "Total a pagar es : \t #{suma_total}"

    end

    def suma_total
        #m,ap genera una nueva lista con el ultimo elemto del bloque
        precios = self.productos.map do |producto|
            producto.precio
        end
        return precios.sum
    end
end