class Library

  attr_reader :books

def initialize(books)
  @books = books
end

def get_info(book_title)
  for each_book in @books
    return each_book[:rental_details] if each_book[:title] == book_title
  end
end

def add_book(book_title)
  @books << {title: book_title, rental_details: {
    student_name: "", date: ""
    }}
end

def change_rental_details(book_title, name, date)
  for each_book in @books
    if each_book[:title] == book_title
      each_book[:rental_details] = {student_name: name, date: date}
    end
  end
end

end
