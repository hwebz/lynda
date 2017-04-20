p (1..10).collect{|n| n * 20}
p (1..10).inject{|memo,n| memo + n} # sum of all the items

array = [*1..10]
sum = array.inject(100) {|memo, n| memo + n}
puts sum

product = array.inject {|memo, n| memo * n}
puts product
product = array.inject(2) {|memo, n| memo * n}
puts product

sum = array.inject {|memo, n| puts memo + n; memo}
fruits = ['apple', 'pear', 'banana', 'plum']
longest_word = fruits.inject do |memo, fruit|
  if memo.length > fruit.length
    memo
  else
    fruit
  end
end
puts longest_word

menu = ['Home', 'History', 'Products', 'Services', 'Contact Us']
p menu.inject(10) {|memo,item| memo + item.length}