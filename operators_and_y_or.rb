
def evaluar(calificacion)

    if calificacion == 0 || calificacion == 1

        print "No has estudiado nada"
    
    elsif calificacion > 1 && calificacion < 7
    
        print "has reprobado"
    
    elsif calificacion == 7 || calificacion == 8
        
        print "Pasaste raspado"
    
    elsif calificacion == 9
    
        print "te fue muy bien"

    elsif  calificacion == 10
        
        print "felicitaciones sacaste un 10"
    
    else 
        
        print "la calificacion no es valida"
    
    end

end

print "Digita tu calificacion: "
calificacion = gets.to_i
evaluar(calificacion)
