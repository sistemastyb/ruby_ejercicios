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

        puts "Bienvenido a tu lista de compras"

        loop do
        
        puts "a - agregar un articulo"
        puts "r - remover un articulo"
        puts "v - mostrar todos articulo"
        puts "m - marcar un articulo"
        puts "b - borrar todos articulo"
        puts "s - salir de la aplicacion"
            
        input = gets.chomp

        case input

        when 'b'
            @list.remove_all

        when 'v'

            @list.show_all

        when 'a'

        puts "Que deseas agregar?"

            item = gets.chomp
            @list.add_item(item)

        when 's'

            break

            end
        end

        puts "Gracias por usar la aplicacion"

     end

end

    list_app = ListApp.new
    list_app.run