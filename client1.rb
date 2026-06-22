#! /usr/local/bin/ruby
# client1.rb

require 'socket'

host = 'www.is.kyusan-u.ac.jp'
port = 'http'
path = '/~toshi/'

sock = TCPSocket.new host, port
cmd  = "GET #{path} HTTP/1.1\r\n"
cmd += "Host: #{host}\r\n"
cmd += "Connection: close\r\n"
cmd += "\r\n"
pp cmd
sock.print cmd

is_body = false
while line = sock.gets
#  pp line
  puts line if is_body
  is_body = true if line == "\r\n"
end
