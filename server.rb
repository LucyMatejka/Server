require 'socket'

server = TCPServer.new(2345)

socket = server.accept

loop do

  socket.puts "What do you say?"

  they_said = socket.gets.chomp

  socket.puts "You said: #{they_said}"

  if they_said.to_s != "quit"

  end

  if  they_said.to_s == "quit"

    puts "Goodbye!"

    socket.close

  end

end
