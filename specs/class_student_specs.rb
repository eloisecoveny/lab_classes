require("minitest/autorun")
require("minitest/rg")
require_relative('../class_student.rb')

class TestStudent < MiniTest::Test

  def test_get_student_name()
    student = Student.new("Eloise", "G11")
    assert_equal("Eloise", student.get_student_name)
  end

  def test_get_cohort()
    student = Student.new("Eloise", "G11")
    assert_equal("G11", student.get_cohort)
  end

  def test_set_student_name()
    student = Student.new("Eloise", "G11")
    student.set_student_name("Alice")
    assert_equal("Alice", student.get_student_name)
  end

  def test_student_talks()
    student = Student.new("Eloise", "G11")
    assert_equal("I can talk", student.student_talks("I can talk"))
  end

  def test_student_favourite_language()
    student = Student.new("Eloise", "G11")
    assert_equal("I love Ruby", student.student_favourite_language("Ruby"))
  end



end
