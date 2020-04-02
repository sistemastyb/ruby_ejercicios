loop do

    print "quieres continuar juagando? s/n "
    
    respuesta1 = gets.chomp

    if respuesta1 != "s"
        break
    end

    puts "sigamos jugando"

    end

    ##### cliclos while

    vidas = 3

    while vidas  > 0

        puts "El juego continua tengo vidas"
        vidas -= 1
        end

        ##### cliclos until

        respuesta = ""

        until respuesta == "n"

            puts = gets.chomp
            print "moriste , quieres seguir jugando? s/n: "
            respuesta = gets.chomp
        end
