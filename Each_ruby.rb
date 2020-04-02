num_array = [1,2,3,4,5]

num_array.each do |num|

    puts num

end

##### contacts_hash

contacts_hash = {"juan" => 12345, "maria"=>6789, "paula"=>101112}

contacts_hash.each do |key,value|

    puts "la llave es #{key} y el valor es #{value}"

    end
    ########


contacts_hash.each_key do |key|

    puts "la llave es #{key}"

    end

#####


contacts_hash.each_value do |value|

    puts "el valor es #{value}"

    end


    ###### imprime solo los caracteres

    "maria".each_char do |chr|
        puts chr
    end


    ###### interador time


    10.times do |time|

        puts "Este es su numero de repeticiones #{time}"

        end