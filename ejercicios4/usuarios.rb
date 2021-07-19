#datos de entrada
require 'securerandom'

def generar_password(nombre_usuario)
    password = SecureRandom.alphanumeric(10)
    usuario_hash={}
    usuario_hash[:nombre] = nombre_usuario
    usuario_hash[:password] =password
    #puts "nombre: #{nombre_hash[:nombre]} \t pass: #{usuario_hash[:password]}"
    return usuario_hash
end

def imprimir_lista_usuarios_hash(lista_suarios)

end

def generar_menu_buscar_usuario(imprimir_lista_usuarios_hash)
    
    puts "ingrese el nombre del trabajador para ver sus datos:"
puts "sus datos, escribir salir para salir"
while comando != "salir"
    nombre_filtro = gets.chomp
    encontramos_al_trabajador = false
    for u in lista_usuarios
        if nombre_filtro == u[:nombre]
            encontramos_al_trabajador = true
            puts "#{u[:nombre]} \t pass: #{u[:pass]}"
        end
    end
    if encontramos_al_trabajador == false
        puts "no se encontro a nadie llamado"

    end
end
end


#ciclos de logica

comando = ""
lista_usuarios = []

puts "Ingrese el nombre de trabajadores para generar contraseñas:"
puts "si desea salir escriba salir "
while comando != "salir"
   #datos de entrada
    puts "Ingrese nombre de trabajador:"
    nombre_usuario = gets.chomp
    #aqui guardo el valor en comando
    comando =nombre_usuario


    if comando != "salir" #evaluarndo el comando
        lista_usuarios << generar_password(nombre_usuario)
        puts "registro guardado"
    end
end

puts "======="
for u in lista_usuarios
        puts "#{u[:nombre]} \t #{u[:password]}"
end
comando = ""

