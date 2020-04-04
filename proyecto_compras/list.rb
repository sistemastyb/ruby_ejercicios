require "./item.rb"

class List

    attr_writer :items

    def initialize()

        @items = Array.new()    
    
    end

    def add_item(text)
        item = Item.new(text)  #metodo para agregar texto
        @items.push(item)
    
    end

    def remove_item(index)
        @items.delete_at(index) #meto para retirar UN articulo de la lista

    end

    def check_item(index)
        @items[index].checked = true #metodo marcar un articulo y cambiar su estado de true o false
        @items[index]
    end
    
    def remove_all
        @items.clear  #metodo que permite retirar todo los articulos de la lista de compras

    end

    def show_all        # metodo para mostra la lista de articulos
        if @items.length == 0

            puts "no hay articulos en tu lista de compras"
            
        else
            @items.each_index do |index|

                puts index.to_s + " - " + @items[index].to_s

            end
            
        end
    end

end
