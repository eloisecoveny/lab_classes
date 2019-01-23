class Library

  attr_accessor :books

  def initialize(books)
    @books = books
  end

  def search_book(title)
    for book in @books
      if book[:title] == title
        return book
      end
    end
  end

  def get_rental_details(title)
    for book in @books
      if book[:title] == title
        return book[:rental_details]
      end
    end
  end

  def add_book(title)
    @books << {
      title: title,
      rental_details: {
        student_name: "",
        date: ""
      }}
  end

  def update_rental_details(title, student, date)
    for book in @books
      if book[:title] == title
        book[:rental_details][:student_name] = student
        book[:rental_details][:date] = date
        return book
      end
    end
  end

end
