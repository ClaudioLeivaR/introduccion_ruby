vida = rand(50...20000)

puts "#{vida} inicial"
golpes = 0.to_i
while vida !=0
  
    if (punch.to_i % 2) != 0
        punch = vida /2
        puts "daño"       
        vida = punch
        puts vida 
        golpes=golpes + 1
    else
        puts "daño"
        punch-1
        vida = punch
       puts vida
       golpes=golpes + 1
    end
    
end
puts "se necesitraron #{golpes} golpes para eliminar al monstruo"