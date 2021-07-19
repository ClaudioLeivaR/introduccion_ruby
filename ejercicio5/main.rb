require 'faker' #trae las gemas
require_relative "cliente" #trae mis archivos
require_relative "gato"
require_relative "perro"
#utilizando un FOR crear una lista de 50 o 100 clientes
#con su nombre y correo
#utilizando un metodo, mostrar la informacion de cliente
lista_gatos = []
lista_perros =[]
lista_de_clientes =  []
 for i in 0..99
     cliente= Cliente.new 
     cliente.nombre = Faker::Name.name
     cliente.correo = Faker::Internet.email(
         name:cliente.nombre, 
         separators: ".", 
         domain: "Leiva"
         )

    
     lista_de_clientes << cliente
 end

 for i in 0..49
     perro = Perro.new
     perro.nombre = Faker::Creature::Dog.name
     perro.peso = Faker::Number::between(from: 30, to: 100)
     perro.edad = Faker::Creature::Dog.age
     perro.raza = Faker::Creature::Dog.breed
     lista_perros << perro
     #perro.ladrar
 end


  for i in 0..49
      gato = Gato.new
      gato.nombre = Faker::Creature::Cat.name
      gato.peso = Faker::Number::between(from: 20, to: 50)
      gato.edad = Faker::Number::between(from: 1, to: 15)
      gato.raza = Faker::Creature::Cat.breed
      lista_gatos <<gato
      #gato.maullar
  end
 
  for i in 0..49
    lista_de_clientes[i].mascota =lista_gatos[i]
  end

  for i in 0..49
    lista_de_clientes[i + 50].mascota =lista_perros[i]
  end

  for cliente in lista_de_clientes
    cliente.mostrar_mascota
  end
  for i in 0..199
    cliente = Cliente.new
    cliente.nombre = Faker::Name.name
    cliente.correo = Faker::Internet.email(
         name:cliente.nombre, 
         separators: ".", 
         domain: "gmail"
         )
    
    #asignacion de mascota
    

  end
#  for perro in lista_perros
#     perro.mostrar_mascota
#  end

#viejo y manual
#onjetor primitivos
#text ="saludos"
#num = 2
#doc = 2.3
#bool = true

#objetos estructurados
#lista = []
#diccionarios = {}

#objetos propios
# puts "ingrese el nombre de cliente"
# cliente1 = Cliente.new
# cliente1.nombre = gets.chomp
# puts "guardado"

# puts "ingrese correo del cliente:"
# cliente1.correo = gets.chomp
# puts "guardado"

# cliente1.cantidad_compras = 34
# cliente1.mostrar_info

# cliente2 = Cliente.new
# cliente2.nombre = "karin"
# cliente2.correo = "kanir@edutecno.com"
# cliente2.cantidad_compras = 1
# cliente2.mostrar_info



cliente1 =Cliente.new
cliente1.nombre = Faker::Name.name

perro = Perro.new
perro.nombre = Faker::Creature::Dog.name

cliente1.mascota = perro
perro.cliente = perro

# puts cliente1.mascota.nombre
# puts perro.cliente1.nombre
 

#puts "cliente #{cliente1.nombre} y su mascota es: #{cliente1.mascota.nombre}"
#puts "la mascota #{perro.nombre} y su dueño es: #{cliente1.nombre}"