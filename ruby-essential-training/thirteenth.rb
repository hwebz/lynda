# find/detect -> return obj/nil
puts (1..10).find{|i| i == 5 }
puts (1..10).find{|i| i % 3 == 0 }
puts (1..10).detect{|i| i % 3 == 0 }
puts (1..10).detect{|i| (1..10).include?(i*3) }
# find_all/select -> return Array
p (1..10).find_all{|i| i % 3 == 0}
p (1..10).select{|i| (1..10).include?(i * 3)}
# any? -> return boolean
puts (1..10).any? {|i| i % 3 == 0}
# all? -> return boolean
puts (1..10).all? {|i| i % 3 == 0}
# delete_if -> return Array
p [*1..10].delete_if{|i| i % 3 == 0}