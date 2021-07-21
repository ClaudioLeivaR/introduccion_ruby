#juego del ahorcado
#10 palabras que tenemos en BD (faker)
#"hola" = "----"
#5 vidas
#cuando adivina la a => "---a"
#"hola" = "felicidades"
#cuando me equivoco 5 veces mensaje de perder
# puts GeneradorPalabras.generar_palabra_estatica
# puts  GeneradorPalabras.generar_planeta
# puts  GeneradorPalabras.generar_planeta

require_relative "juego"

juego_nuevo = Juego.new
juego_nuevo.comenzar
