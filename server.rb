
require 'drb/drb'

class HelloWorld
  def say_hello
    "Hola Mundo desde RPC en Ruby!"
  end
end

URI = "druby://localhost:8787"

DRb.start_service(URI, HelloWorld.new)
puts "Servidor RPC en Ruby en funcionamiento..."
DRb.thread.join
