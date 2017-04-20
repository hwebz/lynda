class ToDoList

  include Enumerable

  attr_accessor :items

  def initialize
    @items = []
  end

  def each
    @items.each {|item| yield item}
  end

  def select
    @items.select{|item| yield item}
  end
end

list = ToDoList.new
list.items = ['laundry', 'dishes', 'vacuum']
puts list.select{|i| i.length > 6}
list.each do |i|
  puts i
end