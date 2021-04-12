# code here!
class School
attr_accessor :name, :roster
ROSTER = {}
  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
    roster[grade] ||= []
    roster[grade] << student
  end

  def grade(grade)
    roster.scan do |g, s|
      if g == grade
        s
      end
    end
  end


end
