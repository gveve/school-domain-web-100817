class School

attr_accessor :school_name, :roster

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def add_student(student_name, student_grade)
    if @roster[student_grade]
        @roster[student_grade] << student_name
      else
        @roster[student_grade] = []
        @roster[student_grade] << student_name
    end
    # @roster.each{|student_name, student_grade| @roster[student_grade]<< student_name}
  end

  def grade (student_grade)
    @roster.values_at(student_grade).flatten
  end

  def sort
   @roster.each_value(&:sort!).sort.to_h
  end

end
