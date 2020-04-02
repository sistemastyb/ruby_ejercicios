class Auto 

    def initialize(placa, color,modelo)

        @placa = placa
        @color = color
        @modelo = modelo
     end

     def placa
        @placa
        end

     def color
        @color
        end

     def modelo
        @modelo
        end
        end

        auto = Auto.new("ASD123", "Verde", "1995")

        puts auto.placa
        puts auto.color
        puts auto.modelo

        ##### form abreviada de escribir el codigo

        class Auto 

            attr_reader :placa, :color, :modelo

            def initialize(placa, color,modelo)

                @placa = placa
                @color = color
                @modelo = modelo
             end
    
                end
        
                auto = Auto.new("ASD123", "Verde", "1995")
        
                puts auto.placa
                puts auto.color
                puts auto.modelo