### Part I: Many Arguments

 # Your constructor will require three arguments:

class Student
  attr_accessor :first_name, :last_name, :grades
  def initialize(first_name, last_name, grades)
    @first_name = first_name
    @last_name = last_name
    @grades = grades
  end
end
# student= Student.new("sarah", "allen", [90, 85, 100])
# puts student.first_name
# puts student.last_name
# puts student.grades

### Part II: One Argument

# Create a completely different definition of your `Student` class. This time,
# require one argument to the constructor. This argument should represent the
# relevant data required to provide a student's first name, last name, and list of
# grades.
class Student
  attr_accessor :first_name, :last_name, :grades
  def initialize(info_hash)
    @first_name = info_hash[:first_name]
    @last_name = info_hash[:last_name]
    @grades = info_hash[:grades]
  end
end
# student= Student.new({:first_name => "sarah", :last_name => "allen", :grades => [76, 85, 95, 80]})

### Part III: Maintain the average in `Student` State

# Modify the constructor you created in **Part II** to also calculate the
# student's average. Store that result in the instance's state.
class Student
  attr_accessor :first_name, :last_name, :grades, :average_grade
  def initialize(info_hash)
    @first_name = info_hash[:first_name]
    @last_name = info_hash[:last_name]
    @grades = info_hash[:grades]
  end
  def average_grade
    sum = 0
    @grades.each do |num|
      sum += num
    end
    @average_grade = sum / @grades.length
  end
end
# student= Student.new({:first_name => "sarah", :last_name => "allen", :grades => [76, 85, 95, 80]})
# puts student.average_grade
