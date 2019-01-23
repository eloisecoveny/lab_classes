require("minitest/autorun")
require("minitest/rg")
require_relative("../class_library.rb")

class TestLibrary < MiniTest::Test

  # Create a class for a Library that has an array of books. Each book should be a hash with a title, which is a string, and rental details, which is another hash with a student name and due date.

  def setup

    @book1 = {
      title: "Norweigan Wood",
      rental_details: {
        student_name: "Eloise",
        date: "14/01/19"
      }
    }

    @book2 = {
      title: "Ancient Worlds",
      rental_details: {
        student_name: "Eloise",
        date: "14/01/19"
      }
    }

    @books = [@book1, @book2]

    @library = Library.new(@books)
  end

  # Create a getter for the books

  def test_get_books
    assert_equal(@books, @library.books())
  end

  # Create a method that takes in a book title and returns all of the information about that book.

  def test_search_for_book
    result = @library.search_book("Norweigan Wood")
    assert_equal("Norweigan Wood", @book1[:title])
    assert_equal(@book1, result)
  end

  # * Create a method that takes in a book title and returns only the rental details for that book.

  def test_get_rental_details
    @library.get_rental_details("Norweigan Wood")
    assert_equal({
      student_name: "Eloise",
      date: "14/01/19"
    }, @book1[:rental_details])
  end

  # * Create a method that takes in a book title and adds it to our book list (add a new hash for the book with the student name and date being left as empty strings)

  def test_add_book
    added_book = @library.add_book("Little Woman")
    assert_equal(@books, added_book)
  end

  # * Create a method that changes the rental details of a book by taking in the title of the book, the student renting it and the date it's due to be returned.

  def test_update_rental_details
    updated_book = @library.update_rental_details("Norweigan Wood", "Laura", "25/01/19")
    assert_equal(@book1, updated_book)
    assert_equal({
      student_name: "Laura",
      date: "25/01/19"
    }, @book1[:rental_details])
  end


end
