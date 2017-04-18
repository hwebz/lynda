puts :test
puts :this_test

# Symbols being declared in memory 1 time
# Symbol simply is a label
puts "test".object_id
puts :test.object_id
puts "test".object_id
puts :test.object_id

hash = {
    :first_name => 'Kevin',
    :last_name => 'Skoglund'
}

other = {
    :first_name => 'Micheal'
}

# puts hash['first_name'] # not found
puts hash[:first_name]