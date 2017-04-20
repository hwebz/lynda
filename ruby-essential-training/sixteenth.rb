puts 1 <=> 2

array = [3,1,5,2,4]
array2 = array.sort{|v1,v2| v1 <=> v2}
array3 = array.sort{|v1,v2| v2 <=> v1}
p array2
p array3
p array3.reverse

fruits = ['banana', 'apple', 'orange', 'pear']
p fruits.sort
p fruits.sort{|fruit1,fruit2| fruit1.length <=> fruit2.length}
p fruits.sort_by{|fruit| fruit.length}
p fruits.sort_by{|fruit| fruit.reverse}
p fruits.sort! {|fruit1,fruit2| fruit1.length <=> fruit2.length}

hash = {
    "c" => 222,
    "a" => 555,
    "d" => 111,
    "b" => 333
}

p hash.to_a
p hash.sort{|item1,item2| item1[0] <=> item2[0]}
p hash.sort{|item1,item2| item2[0] <=> item1[0]}