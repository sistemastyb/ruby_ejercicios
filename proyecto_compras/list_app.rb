require "./list.rb"
require "./item.rb"     #requerir archivos de clases y metodos creados


class ListApp

    attr_writer :list   # instanciar la clase de ListApp solo escritura

    def initialize    # Merodo de inicializacion

        @list = List.new  # siempre que se inicialice la app crea una nueva lista
    
    end

    def run  # Metodo de vista del usuario

        puts "Bienvenido a tu lista de compras de compras" #Mensajes que ve el usuario que la usa
        loop do                         #comienzo del cliclo se repite cuando hace una accion o inicia la app
        puts
        puts "a - agregar un articulo"
        puts "r - remover un articulo"
        puts "v - mostrar todos articulo"
        puts "m - marcar un articulo"
        puts "b - borrar todos articulo"
        puts "s - salir de la aplicacion"
           
        input = gets.chomp   #Entrada de texto del usuario
        case input   # toma la variables con la que vas ha trabajar 


        when 'm'   #cuando m es la entrada de texto del usuario entonces marque el numero

            puts "# de articulos que desea marcar"
            index = gets.chomp
          item = @list.check_item(index.to_i) #variable item y metodo de check index.to_i es para convertir a numeros enteros

            40.times {print "*"} #se usa para imprir la veces que quiera el valor en esa linea

            puts "\n #{item.text} ha sido marcado" # muestra en una linea la casilla marcada y el texto(nombre del producto)

            40.times {print "*"}

        when 'r'

            puts "# de articulos que desea remover"
            index = gets.chomp
            
           item = @list.remove_item(index.to_i)

            40.times {print "*"}

            puts "\n #{item.text} ha sido removido"

            40.times {print "*"}


        when 'b'

            puts "Estas seguro de borrar todos los articulos? s/n"
            input = gets.chomp

            if input == 's'   # condicion para generar un mensaje de confirmacion, si el input es igual a s se borrara toda la lista
                              # de lo contrario no hara nada
                @list.remove_all
            else
                puts "Operación cancelada"
            end

        when 'v'

            @list.show_all

        when 'a'

        puts "Que deseas agregar?"

            item = gets.chomp
            @list.add_item(item)
            40.times {print "*"}
            puts "\n#{item} ha sido agregado a tu lista\n"
            40.times {print "*"}

        when 's'

            break   # se termnina el ciclo

        else

            puts "operacion no reconocida"  # cuando la entrada del usuario no es valida se genera este mensaje

            end
        end

        puts "Gracias por usar la aplicacion"

     end

end

    list_app = ListApp.new  #se crea la nueva lista 
    list_app.run # inicia la aplicacion