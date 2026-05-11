#! /usr/bin/env ruby

puts("Hello, World!")
a=-5
s="Ruby"
d=3.14
puts "a:"+a.to_s()
puts "s:"+s
puts "d:"+d.to_s()
if a>5
  puts "Large"
elsif a<0
  puts "Negative"
else
  puts "Little"
end
x=5
while x>0
  print "#"
  x -= 1
end
puts
5.times do |i|
  print i.to_s + ","
end
puts
