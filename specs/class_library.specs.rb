require("minitest/autorun")
require("minitest/rg")
require_relative('../class_library.rb')

class TestLibrary < MiniTest::Test

  # def setup
  #
  #   @books = [
  #     { title: "Norweigan Wood",
  #       rental_details: {
  #         student_name: "Eloise",
  #         date: "14/01/19"
  #       }
  #     },
  #     { title: "Ancient Worlds",
  #       rental_details: {
  #         student_name: "Eloise",
  #         date: "14/01/19"
  #       }
  #     }
  #   ]
  # end

  def test_get_title()
    book = Library.new("Norweigan Wood", {title:"Eloise", date:"14/01/19"})
    assert_equal("Norweigan Wood", book.get_title)
  end

  def test_get_book_info()
    books = Library.new("Norweigan Wood",
      {
        student_name: "Eloise",
        date: "14/01/19"
        }
    )
    result = books.get_book_info("Norweigan Wood")
    assert_equal({"Norweigan Wood",
      {
        student_name: "Eloise",
        date: "14/01/19"}, result)
  end

  def test_get_rental_details()
    book = Library.new("Norweigan Wood", {title:"Eloise", date:"14/01/19"})
    assert_equal({title:"Eloise", date:"14/01/19"}, book.get_rental_details("Norweigan Wood"))
  end

end
