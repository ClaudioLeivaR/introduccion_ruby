require_relative "../lib/calculadora"
RSpec.describe "Calculadora" do
    
    context "sumar numeros" do
        
        it "cuando son iguales" do
            #configuracion
            calc = Calculadora.new
             #ejecucion
            resultado = calc.sumar(2,2)
            #expectativa
            expect(resultado).to eql(4)
        end
        it "cuando uno es negativo" do
            calc = Calculadora.new
            resultado = calc.sumar(-1,9)
            expect(resultado).to eql(8)
        end
        it "cuando los dos son negativos" do
            calc = Calculadora.new
            resultado = calc.sumar(-1,-2)
            expect(resultado).to eql(-3)
        end
        it "cuando son positivos" do
            calc = Calculadora.new
            resultado = calc.sumar(2,5)
            expect(resultado).to eql(7)
        end
       
    end

    describe "restar numeros" do
        it "cuando son iguales" do
            calc = Calculadora.new
            resultado = calc.resta(2,2)
            expect(resultado).to eql(0)
        end
        it "cuando son negativos" do
            calc = Calculadora.new
            resultado = calc.resta(-1,-9)
            expect(resultado).to eql(8)
        end
        it "cuando uno es negativo" do
            calc = Calculadora.new
            resultado = calc.resta(-2,9)
            expect(resultado).to eql(-11)
        end
        it "cuando son positivos" do
            calc = Calculadora.new
            resultado = calc.resta(2,10)
            expect(resultado).to eql(-8)
        end

    end

    describe "multiplicar numeros" do
        it "cuando son iguales" do
            calc = Calculadora.new
            resultado = calc.multiplicar(2,2)
            expect(resultado).to eql(4)
        end
        it "cuando son negativos" do
            calc = Calculadora.new
            resultado = calc.multiplicar(-2,-4)
            expect(resultado).to eql(8)
        end
        it "cuando uno es negativo" do
            calc = Calculadora.new
            resultado = calc.multiplicar(2,-4)
            expect(resultado).to eql(-8)
        end
        it "cuando son positivos" do
            calc = Calculadora.new
            resultado = calc.multiplicar(2,6)
            expect(resultado).to eql(12)
        end

    end

    context "dividir numeros" do
        it "cuando son iguales" do
            calc = Calculadora.new
            resultado = calc.division(2,2)
            expect(resultado).to eql(1)
        end
        it "cuando son negativos" do
            calc = Calculadora.new
            resultado = calc.division(-6,-2)
            expect(resultado).to eql(3)
        end
        it "cuando uno es negativo" do
            calc = Calculadora.new
            resultado = calc.division(-6,2)
            expect(resultado).to eql(-3)
        end
        it "cuando son positivos" do
            calc = Calculadora.new
            resultado = calc.division(6,2)
            expect(resultado).to eql(3)
        end
        it "cuando el denominador es 0" do
            calc = Calculadora.new
            resultado = calc.division(9,0)
            expect(resultado).to eql("no se puede dividir por 0")
        end

    end

    context "datos invalidos" do
        it "cuando uno es una letra" do
            calc = Calculadora.new
            resultado = calc.sumar(2,"2")
            expect(resultado).to eql("solo operaciones con numeros")
        end
        it "cuando enviamos signos en vez de numeros"
    end

end