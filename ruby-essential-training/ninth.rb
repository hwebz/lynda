# If Elsif Else
x = 10

if x < 10
  puts "Below 10"
elsif x > 20
  puts "Over 20"
else
  puts "Between 10 & 20"
end

name = "Kevin"
puts "This is Kevin" if name == "Kevin"
puts true ? "This was true" : "This was false"

# Unless

unless x <= 20
  puts "Over 20"
else
  unless x >= 10
    puts "Below 10"
  else
    puts "Between 10 & 20"
  end
end

# Case
case x
  when 5
    puts " = 5"
  when 10
    puts "= 10"
  when 15
    puts "= 15"
  else
    puts "Nothing"
end

a = "Hello"
b = nil
c = a || b
puts c