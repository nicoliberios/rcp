# server.rb
require 'drb/drb'

# Crear un objeto que se va a compartir
class HelloWorld
  def say_hello
    "Hola Mundo desde RPC en Ruby!"
  end
end

# Dirección donde el servidor escuchará las solicitudes
URI = "druby://localhost:8787"

# Crear y registrar el objeto para que sea accesible remotamente
DRb.start_service(URI, HelloWorld.new)
puts "Servidor RPC en Ruby en funcionamiento..."
DRb.thread.join
