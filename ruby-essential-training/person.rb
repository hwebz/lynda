load 'contact-info.rb'

module Human
  class Person
    include ContactInfo
  end

  class Teacher
    include ContactInfo
    attr_accessor :lesson_plans
  end

  class Student < Person
    attr_accessor :books, :grades
  end
end