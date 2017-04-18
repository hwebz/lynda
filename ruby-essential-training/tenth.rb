# Generic Loops
x = 1

loop do
  x += 1
  puts x

  break unless x < 10
end
puts "========"

=begin
  break - terminate the whole loop
  next - jump to the next loop
  redo - redo this loop
  retry - start the whole loop over
=end

# While loop
x = 20
while x > 0
  x -= 2
  next if x == 14
  puts x
end

puts "========="
x = 0
puts x += 2 while x < 10

# Until loop
x = 20
puts "========"
until x <= 0
  x -= 2
  next if x == 14
  puts x
end

puts "========="
x = 0
puts x += 1 until x >= 10