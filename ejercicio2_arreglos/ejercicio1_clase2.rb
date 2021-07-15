puts "ingrese un texto"
texto = gets.chomp
puts texto.gsub(/[a]/, 'x').gsub(/[e]/, 'y') #se pueden anclar
puts 