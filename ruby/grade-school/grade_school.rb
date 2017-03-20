class School
  def initialize
    @school = {}
  end

  def students(grade)
    @school[grade] || []
  end

  def add(name, grade)
    # I don't like this but I am not sure of a cleaner way
    # Hash.new([]) seems to fail when you call `<<`
    @school[grade] ||= []
    @school[grade] << name
    @school[grade].sort!
  end

  def students_by_grade
    @school.sort.to_h.map { |k,v| { grade: k, students: v.sort } }
  end
end
