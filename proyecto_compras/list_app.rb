require "./list.rb"
require "./item.rb"

# vista de usuarios
# Remover un articulo
# ver todos los articulos
# Marcar un articulo
# borrar todos los articulos
# salir de la app
class ListApp

    attr_writer :list

    def initialize

        @list = List.new
    
    end

    def run 
        puts "Bienvenido a tu lista de compras de compras"
        loop do
        puts
        puts "a - agregar un articulo"
        puts "r - remover un articulo"
        puts "v - mostrar todos articulo"
        puts "m - marcar un articulo"
        puts "b - borrar todos articulo"
        puts "s - salir de la aplicacion"
           
        input = gets.chomp
        case input


        when 'm'

            puts "# de articulos que desea marcar"
            index = gets.chomp
          item = @list.check_item(index.to_i)

            40.times {print "*"}

            puts "\n #{item.text} ha sido marcado"

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

            if input == 's'
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

            break

        else

            puts "operacion no reconocida"

            end
        end

        puts "Gracias por usar la aplicacion"

     end

end

    list_app = ListApp.new
    list_app.run