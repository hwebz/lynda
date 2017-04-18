x = 1..10
y = 1...10
puts x.class
puts y.class

puts x.begin
puts x.end
puts y.first
puts y.last

puts x.include?(1)
puts x.include?(10)
puts y.include?(1)
puts y.include?(10)

z = [*x]
p z
z = [*y]
p z

alpha = 'a'..'m'
puts alpha.include?('h')
puts alpha.include?('v')