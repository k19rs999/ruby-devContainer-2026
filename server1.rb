#! /usr/local/bin/ruby
# server1.rb

require 'socket'

def server s
  pp "START"
  while line=s.gets
    pp line
    s.puts line
    break if line == "\r\n"
  end
  s.close
end

gs = TCPServer.open 'http'
loop do
  pp "start accept"
  s = gs.accept
  Thread.new do
    server s
    sleep 10
  end
end
