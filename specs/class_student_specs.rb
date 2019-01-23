require("minitest/autorun")
require("minitest/rg")
require_relative('../class_student.rb')

class TestStudent < MiniTest::Test

  def setup()
    @student = Student.new("Eloise", "G11")
  end

  def test_get_name()
    assert_equal("Eloise", @student.get_name())
  end

  def test_get_cohort()
    assert_equal("G11", @student.get_cohort)
  end

  def test_set_name()
    @student.set_name("Alice")
    assert_equal("Alice", @student.get_name)
  end

  def test_set_cohort()
    @student.set_cohort("G10")
    assert_equal("G10", @student.get_cohort)
  end

  def test_talk()
    result = @student.talk()
    assert_equal("I can talk", result)
  end

  def test_favourite_language()
    result = @student.favourite_language("Ruby")
    assert_equal("I love Ruby", result)
  end



end
