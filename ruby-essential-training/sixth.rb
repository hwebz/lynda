puts true == false
puts 5 > 3
puts 7 < 10
puts 5 >= 5
puts 5 <= 6
puts !5
puts '1' != "1"
puts true && true
puts true && false
puts true || false
puts false || false

z = nil
puts z.nil?
puts 2.between?(1,4)
puts 2.between?(3,4)
puts [1,2,3].empty?
puts [1,2,3].include?(2)

puts ({'a' => 1, 'b' => 2}).has_key?('a')
puts ({'a' => 1, 'b' => 2}).has_key?(:a)
puts ({'a' => 1, 'b' => 2}).has_value?(2)