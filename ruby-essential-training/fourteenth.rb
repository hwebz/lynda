h1 = {
    "a" => 111,
    "b" => 222
}

p h1

h2 = {
    "b" => 333,
    "c" => 444
}

p h1.merge(h2)
p h2.merge(h1)

p h1.merge(h2) {|key,old,new| new}
p h1.merge(h2) {|key,old,new| old}
p h1.merge(h2) {|key,old,new| old * 5}

p h1.merge(h2) do |key,old,new|
  if (old < new)
    old
  else
    new
  end
end
p h1.merge(h2){|k,o,n| o < n ? o : n}

p h1.merge(h2)
p h1.merge!(h2)