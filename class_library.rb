class Library

  attr_accessor :title, :student_name, :date

  def initialize(title, {student_name, date})
    @title = title
    @rental_details = rental_details
    @student_name = student_name
    @date = date
  end

  def get_title()
    return @title
  end

  def get_book_info(title)
    for book in books
      return book if @title
    end
  end

  def get_rental_details(title)
    return @rental_details if @title
  end

end
