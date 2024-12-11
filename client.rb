
require 'drb/drb'

URI = "druby://localhost:8787"

hello = DRbObject.new_with_uri(URI)

puts hello.say_hello
