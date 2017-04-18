puts 123
print 456
puts 789

# This is a single comment
print "Hello".reverse

# Global 	$varibale
#Class		@@variable
#Instance 	@cariable
#Local 		variable
#Block 		variable

x = 4
x += 2
x = x + 2
puts 1234.class
puts 123123211321212132132132.class
puts -200.abs
puts 200.next

puts 1234.4546.round
puts 1232.43.to_i
puts 232.32.ceil
puts 232.3232.floor

greeting = 'Hello I\'m Ha'
target = "World \"Termology\""
puts greeting + ' ' + target
puts "Woh! "*5
puts '\ta\tb\tc\td'
puts "I want to say #{greeting} #{target}."
puts "1 + 1 = #{1 + 1}"
puts "Hello".capitalize
puts "Hello".downcase
puts "Hello".upcase
puts "Hello".reverse.upcase.length

dataset = ["a", "b", "c"]
puts dataset[1]
dataset[0] = "d"
puts dataset[0]
dataset[1] = nil
dataset.clear
dataset = []
array = [1, 2, 3, 4, 5]
array2 = [1, "2", 3.0, ["a", "b"], "dog"]
puts array
puts array.inspect
puts array2.inspect
puts array2
puts array2.to_s
puts array2.join
puts array2.join(", ")

x = "1,2,3,4,5"
y = x.split(",")
puts y.reverse
array << 3
puts array.inspect
array.uniq
# Give ! to execute immediately
array.uniq!
puts array.inspect
array.delete_at(2) # position
array.delete(4) # value
array.push(4)
puts array.inspect
array.pop
array.shift
puts array.inspect
array.unshift(1)

new_array = array + [9, 10]
puts new_array.inspect
new_array = array - [9, 10]
puts new_array.inspect
new_array = array - [2]
puts new_array.inspect

person = ["Kevin", "Skoglund", 'male', 'blue', 'blonde']
person = {'first_name' => 'Kevin', 'last_name' => 'Skoglund'}
puts person['first_name']
puts person.index('Kevin')

mixed = {1 => ['a', 'b', 'c'], 'hello' => 'world', [10, 20] => 'top'}
puts mixed.inspect
puts mixed[1]
puts mixed[[10,20]]
puts mixed.keys
puts mixed.values
puts mixed.length
puts mixed.size
puts mixed.to_a
mixed.clear # mixed = {}

"test".object_id
:test.object_id # :test is called label
"test".object_id #diffirent one

hash = {:first_name => 'Kevin', :last_name => 'Skoglund'}
puts hash['first_name'] # nil
puts hash[:first_name]

puts true.class
puts x != 1
puts 5 < 3
puts 7 > 3
puts !x
puts 1 <= 4 && 5 <= 100

z = nil
puts z.nil?
puts 2.between?(1,4)
puts [1,2,3].empty?
puts [].empty?
puts [1,2,3].include?(2)
{'a' => 1, 'b' => 2}.has_key?('a')
{'a' => 1, 'b' => 2}.has_key?(:a)
{'a' => 1, 'b' => 2}.has_value?(2)

x = 1..10
puts 1..10
puts (1..10).class
puts x.begin
puts x.end
puts x.first
puts x.last
y = 1..10
puts y.begin
puts y.end
puts x.include?(10)
z = [*x]
puts z.inspect
alpha = 'a'..'m'
puts alpha.include?('g')

# Constants
TEST = 2 # cannot change value of constants
test = 1
test = 2

name = "Kevin"

if name == "Bob"
	puts "Found Bob!"
elsif name == "Kevin"
	puts "Found Kevin!"
else
	puts "Not Bob..."
end

puts "This is Kevin" if name == "Kevin"

unless 4 < 3 # =if !condition
	puts "4 < 3 is false"
end

opt = 1
case opt
	when 0
		puts "Zero"
	when 1
		puts "One"
	when 10
		puts "Ten"
	else
		puts "Nothing"
end

puts true ? "True" : "False"

x = y || z # assign value y or z to x if exists
x ||= y # if it has value, do nothing, if no assign y to x

x = 0
loop do
	x += 2
	break if x >= 20
	next if x == 6
	puts x
end

while x > 0
	x -= 2
	puts x
end

x = 0
puts x += 2 while x < 100
y = 3244
puts y /= 2 until y <= 1

# Iterators
5.times do
	puts "Hello"
end

10.times do |num|
	puts "Line " + num.to_s
end

1.upto(5) {puts "Hi"}
5.downto(1) {puts "Howdy!"}
(1..5).each {puts "Goodbye"}

fruits = ['banana', 'apple', 'pear']
fruits.each do |fruit|
	puts fruit.capitalize
end

for fruit in fruits
	puts fruit.capitalize
end

# Intergers/Float: times, upto, downto, step
# Range: each, step
# String: each, each_line, each_byte
# Array: each, each_index, each_with_index
# Hash: each, each_key, each_value, each_pair
	
arr = [1,2,3,4,5]
arr.each {|num| puts num * 20}

puts (1..10).find{|i| i == 5}
puts (1..10).find{|i| i % 3 == 0}
puts (1..10).detect{|i| i % 3 == 0}
puts (1..10).detect {|i| (1..10).include?(i*3)}
(1..10).find_all {|i| i % 3 == 0}
(1..10).select{|i| (1..10).include?(i*3)}
(1..10).any? {|i| i % 3 == 0}
(1..10).all? {|i| i % 3 == 0}
[*1..10].delete_if {|i| i % 3 == 0}
h1 = {"a" => 111, "b" => 222}
h2 = {"b" => 333, "c" => "444"}
h1.merge(h2)
h2.merge(h1)