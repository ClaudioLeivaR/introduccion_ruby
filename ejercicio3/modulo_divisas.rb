module ModuloDivisas

#metodos
def convertir_dolar_peso_colombiano ( entrada_monto)
    cop = entrada_monto*3800
    puts"#{entrada_monto} $ => #{cop} COP"
end

def convertir_clp_dolar(monto_clp)
    dolares = monto_clp /756
    puts"#{monto_clp} $ => #{dolares} $."
end

def convertir_dolar_soles(monto_dolar)
    soles= monto_dolar*3.96
    puts"#{monto_dolar} $ => #{soles} S."

end

end