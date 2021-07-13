
persona1 = "jaime,80,basico"#=> Hola, me llamo Jaime y tengo 80 años mi nivel es *
persona2 = "camila,16,intermedio"#. => Hola, me llamo Jaime y tengo 16 años mi nivel es * *
persona3 = "edgar,50,avanzado"#. => Hola, me llamo Jaime y tengo 50 años mi nivel es * * *

nombre=persona1.split(",")[0]
edad=persona1.split(",")[1]
nivel=persona1.split(",")[2]

puts "hola, me llamo #{nombre} y tengo #{edad} años, mi nivel es #{nivel}"

nombre=persona2.split(",")[0]
edad=persona2.split(",")[1]
nivel=persona2.split(",")[2]

puts "hola, me llamo #{nombre} y tengo #{edad} años, mi nivel es #{nivel}"

nombre=persona3.split(",")[0]
edad=persona3.split(",")[1]
nivel=persona3.split(",")[2]

puts "hola, me llamo #{nombre} y tengo #{edad} años, mi nivel es #{nivel}"

puts "ingrese su nombre"
nombre1=gets.chomp
puts "ingrese su edad"
edad1=gets.chomp
puts"ingrese su nivel"
nivel1= gets.chomp

puts "hola, me llamo #{nombre1} y tengo #{edad1} años, mi nivel es #{nivel1}"