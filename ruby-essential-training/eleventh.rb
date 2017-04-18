5.times do
  puts "Hello"
end

1.upto(5) {
  puts "up iterator"
}
1.upto(5) do |i|
  puts "up iterator: #{i}"
end

5.downto(1) {
  puts "down iterator"
}
5.downto(1) do |i|
  puts "down iterator: #{i}"
end

(1..5).each {
  puts "range iterator"
}
(1..5).each do |i|
  puts "range iterator: #{i}"
end

# e.g
=begin
  Integers/Floats: times, upto, downto, step
  Range: each, step
  String: each, each_line, each_byte
  Array: each, each_index, each_with_index
  Hash: each, each_key, each_value, each_pair
=end

fruits = ["banana", "apple", "pear"]
fruits.each do |fruit|
  puts fruit.capitalize
end