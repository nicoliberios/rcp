# client.rb
require 'drb/drb'

# Dirección del servidor donde el cliente se conectará
URI = "druby://localhost:8787"

# Conectar al servidor y obtener el objeto remoto
hello = DRbObject.new_with_uri(URI)

# Llamar al método remoto
puts hello.say_hello
