class Calculadora
    
    def sumar(a,b)
        if a.class==Integer and b.class==Integer
            return a+b
        else
            return "solo operaciones con numeros"
        end
    end

    def resta(a,b)
        c= a-b
        return c
    end

    def multiplicar(a,b)
        c=a*b 
        return c
    end

    def division(a,b)
        if b==0
            return "no se puede dividir por 0"
        end
        return a/b
    end
end