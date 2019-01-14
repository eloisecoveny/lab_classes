class Student

  def initialize(student_name, cohort)
    @name = student_name
    @cohort = cohort
  end

  def get_student_name()
    return @name
  end

  def get_cohort()
    return @cohort
  end

  def set_student_name(new_name)
    @name = new_name
  end

  def student_talks(string)
    return string
  end

  def student_favourite_language(favourite_language)
    return "I love #{favourite_language}"
  end

end
