# 7.times do |time|

#     puts "Esto es parte de un bloque #{time}"

# end

def hola 

    puts "Hola desde nuestra funcion"

    resultado = 2+2

    yield resultado

end

hola do  |resultado|

    puts "El resultado de la funcion es #{resultado}"

end



# hola do  # Bloque pa

#     puts "Hola desde nuestro bloque"

# end