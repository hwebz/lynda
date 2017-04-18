array = [1,2,3,4,5]
p array.collect{|i| i + 1 }
p array.collect{|i| i * 40 }

array2 = ["apple", "banana", "orange"]
p array2.map {|fruit| fruit.capitalize}
p array2.map {|fruit| fruit.capitalize if fruit == "banana"}

array2.map do |fruit|
  if fruit == "banana"
    puts fruit.capitalize
  else
    puts fruit
  end
end

p (1..20).collect{|num| num * 20 }

hash = {
    "a" => 111,
    "b" => 222,
    "c" => 333
}

p hash.map{|k,v| k}
p hash.map{|k,v| v * 20}
p hash.map{|k,v| "#{k}: #{v * 20}"}