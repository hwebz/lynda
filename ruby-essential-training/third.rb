data_set = []
data_set = ["a", "b", "c"]
puts data_set[0]
puts data_set[2]

data_set[1] = "d"

puts data_set[1]

data_set << "e"

p data_set

data_set[1] = nil
p data_set

data_set.clear
p data_set

puts data_set.class

data_set = nil
p data_set

puts data_set.class

# Methods
array = [1,2,2,3,3,4,5,5,6,7,8]
array2 = [1, "2", 3.0, ["a", "b", "c"], "dog", true]

puts array.inspect
puts array2.to_s
puts array2.join(", ")

x = "1,2,3,4,5,6"
y = x.split(",")

p y
p y.reverse
y << 0
p y
p array.sort
p array.uniq
p array.uniq!

p array.delete_at(2)
p array.delete(5)
p array

p array.push(9)
p array.pop
p array.shift
p array.unshift(12)

p array + [14,15,16]
p array - [15,16]