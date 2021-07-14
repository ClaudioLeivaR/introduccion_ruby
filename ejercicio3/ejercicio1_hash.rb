tecto =""
texto2=""
num = 2
bool =false
#coleccion de datos
lista=[]
hash={}
serie_1={
    nombre: "sweet tooth",
    formato: "serie",
    temporadas: "1",
    sinopsis: "En un mundo postapocalíptico, Gus, un niño mitad humano y mitad ciervo, busca un nuevo comienzo junto a Jeppers, un vagabundo con una vida solitaria.",
    genero: "drama",
}
serie2 ={
    nombre:"resident evil infinite darkness",
    formato:"serie",
    temporadas:"1",
    sinopsis:"",
    genero:"drama",
}
serie3 ={
    nombre:"atypical",
    formato:"serie",
    temporadas:"4",
    sinopsis:"",
    genero:"drama",
}
serie4 ={
    nombre:"the witcher",
    formato:"serie",
    temporadas:"1",
    sinopsis:"",
    genero:"drama",
}

series=[
    serie_1, serie2, serie3, serie4
]
#salida
#mensajes en consola donde se muestren nombre y formnato

for serie in series
puts "nombre: #{serie[:nombre]}\t formato: #{serie[:formato]}"
puts "========"
end

puts "========"
