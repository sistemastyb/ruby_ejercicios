require "sinatra"

get '/' do
  
  @files = Dir.entries("wordshop")
  erb :home   # es la forma de traer un archivo ya creado

  end


  get '/:nombre' do

    @nombre = params[:nombre]
    erb :talleres
   # "<h1>Taller de formacion deportiva</h1>"
  end

