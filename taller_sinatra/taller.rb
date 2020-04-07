require "sinatra"

def wordshop_content(name)   #Metodo de salida ,agregar
File.read("wordshop/#{name}.txt")
rescue Errno::ENOENT
  return nil
end

def save_wordshop(name,description)  #Metodo abrir contenido en formato de escritura,guardar
  File.open("wordshop/#{name}.txt", "w") do |file|
  file.print(description)
  end
end

def delete_wordshop(name) #Metodo de eliminar
  File.delete("wordshop/#{name}.txt")
end

get '/' do
  
  @files = Dir.entries("wordshop")
  erb :home  # es la forma de traer un archivo ya creado

  end

  get '/create' do
    erb :create
end

  get '/:name' do

    @name = params[:name]
    @description = wordshop_content(@name)
    erb :talleres

   # "<h1>Taller de formacion deportiva</h1>"
  end

  get '/:name/edit' do
    @name = params[:name]
    @description = wordshop_content(@name)
    erb :edit
    
   end

  post '/create' do
   # "<h1>#{@name}</h1><p>#{@description}</p>"
   save_wordshop(params["name"], params["description"])
   @name = params["name"]
   @message = "creado"
   erb :message

  end   

 delete '/:name' do
  delete_wordshop(params[:name])
  @name = params[:name]
  @message = "eliminado"
  erb :message
 end

put '/:name' do
  save_wordshop(params[:name], params["description"])
  redirect URI.escape("/#{params[:name]}")
  

end