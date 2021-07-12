#datos de entrrada
marcador = "4-6" #cadena de texto o caracteres

#preparacion de datos

marcador_local=marcador.split("-")[0].to_i # => "3" .to_i => 3
marcador_visita=marcador.split("-")[1].to_i


mensaje1 = "el equipo local es el ganador"
mensaje2 = "el equipo visitantes es el ganador"
mensaje3 = "empate"
#logica
#condicionales

if marcador_local > marcador_visita
    puts mensaje1
elsif marcador_local < marcador_visita
    puts mensaje2
elsif marcador_local == marcador_visita
    puts mensaje3
end





