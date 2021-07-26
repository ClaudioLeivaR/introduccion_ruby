require_relative "../lib/sesion"

RSpec.describe Sesion do
    #controla el flujo del juego
    #por cada sesion tengo un texto guia
    #la sesion termina cuando presiona enter
    #tiene la cadena completa y correcta
    #mpostrar el tiempo de la sesion

    it "con texto guia diferente a vacio o nil" do
        sesion = Sesion.new(5)

        resultado = sesion.guia

        expect(resultado.join).not_to eq("")
        expect(resultado).not_to eq(nil)

    end

    it "tiempo inicial debe ser diferente de nil" do
        sesion = Sesion.new(10)

        resultado = sesion.tiempo_inicial

        expect(resultado).not_to eq(nil)
        expect(resultado.class).to eq(Time)
    end
end