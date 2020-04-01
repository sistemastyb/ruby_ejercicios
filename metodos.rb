### Metodos

def saludar #metodo sin argumentos

puts "Hola Juan Buenas tardes"

end

saludar

def saludar(nombre) #metodos con argumentos esperando un valor 

    puts "Hola #{nombre} Buenas tardes"
    
    end
    
    saludar("Juan")

    ######### Mas de un arumento
    

    def saludar(nombre,saludar) #metodos con argumentos esperando un valor 

        puts "Hola #{nombre} , #{saludar}"
        
        end
        print "ingresa tu nombre por favor: "  # valor de la variable
        nombre = gets.chomp  #variable + su valor y espera que le demos un valor se puede agregar chomp para quitar salto de linea

        saludar(nombre, "Buenas tardes")

       # metodos con numeros y return encapsulados

       def suma(num1, num2)
            suma = num1+num2

            return suma

        end

        def resta(num1, num2)
            resta = num1-num2

            return resta

        end

        def divicion(num1, num2)
            divicion = num1/num2

            return divicion

        end

        def multiplicacion(num1, num2)
            multiplicacion = num1*num2

            return multiplicacion

        end

        a = 190
        b = 10

        resultado = suma(a,b)
        puts "la suma de #{a} y #{b} es igual a #{resultado}"

        resultado = resta(a,b)
        puts "la resta de #{a} y #{b} es igual a #{resultado}"

        resultado = divicion(a,b)
        puts "la divicion de #{a} y #{b} es igual a #{resultado}"

        resultado = multiplicacion(a,b)
        puts "la multiplicacion de #{a} y #{b} es igual a #{resultado}"

        

