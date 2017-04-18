person = ["Kevin", "Skoglund", "male", "blue", "blonde"]
p person
person = {'first_name' => 'Kevin', 'last_name' => 'Skoglund'}
p person
puts person['first_name']
puts person.key('Kevin')

mixed = {
    1 => ['a', 'b', 'c'],
    'hello' => 'world',
    [10, 20] => 'top'
}

p mixed
puts mixed[1]
puts mixed[[10, 20]]
puts mixed.keys
puts mixed.size
p mixed.to_a
mixed.clear
p mixed
mixed = {}
p mixed
person['gender'] = 'male'
p person