# class Auto 

#     def initialize(placa, color,modelo)

#         @placa = placa
#         @color = color
#         @modelo = modelo
#      end

#      def placa
#         @placa
#         end

#      def color
#         @color
#         end

#      def modelo
#         @modelo
#         end


#         end

#         auto = Auto.new("ASD123", "Verde", "1995")

#         puts auto.placa
#         puts auto.color
#         puts auto.modelo

        ##### form abreviada de escribir el codigo

        class Auto 

           # attr_reader :placa, :color, :modelo # solo lectura
           # attr_writer :color # escritura
            attr_accessor :placa, :color, :modelo # permite leer y escribir 

            def initialize(placa, color,modelo)

                @placa = placa
                @color = color
                @modelo = modelo
             end

             def frenar

               puts "el auto ha derrapado"

            end
            
            def descripcion 
               puts"EL carro de placas #{@placa}, de color #{@color}, y modelo #{@modelo}"
            end

            # def to_s 
            #    "EL carro de placas #{@placa}, de color #{@color}, y modelo #{@modelo}"
            # end

        end
               #  auto = Auto.new("ASD123", "Verde", "1995")
        
               #  puts auto.placa
               #  puts auto.color
               #  puts auto.modelo