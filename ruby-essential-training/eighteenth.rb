"hello".reverse.capitalize

1.upto(5) { |i| puts i }

p [1,2,3,4,5].sort{|val1,val2| val2 <=> val1}

# Methods with arguments typically use paentheses.
# Methods without arguments typically do not.
# Parentheses are optional in both cases.

def welcome(name = "World")
  puts "Hello #{name}"
end

def add(n1, n2)
  add = n1 + n2
  sub = n1 - n2
  return [add, sub]
end

# Underscore between words, like variable names
# Global - $var
# Class - @@var
# Instance - @var
@words = ['apple', 'pear', 'banana', 'plum']
fruits = ['pear', 'plumn', 'bluecherries']
def longest_word
  longest_word = @words.inject do |memo, word|
    memo.length > word.length ? memo : word
  end
  puts longest_word
end

def longest_word_2(words=[])
  longest_word = words.inject do |memo, word|
    memo.length > word.length ? memo : word
  end
  return longest_word
end

def over_five?
  value = 3
  puts value > 5 ? 'Over 5' : 'Not over 5'
end

# Must define methods before calling them!
welcome
welcome("Jackie")
p add(12,13)
longest_word
puts longest_word_2(fruits)
over_five?