require('minitest/autorun')
require('minitest/rg')
require_relative('../Library.rb')

class LibraryTest < MiniTest::Test

def setup
  @books = [
    {title: "Lord of the Rings",
      rental_details: {
        student_name: "Jeff",
        date: "01/12/16"
      }},
    {title: "Matilda",
      rental_details: {
        student_name: "Digory",
        date: "10/01/92"
      }}
  ]

  @library = Library.new(@books)

end

def test_get_books
  assert_equal(@books, @library.books)
end

def test_get_info
  assert_equal({student_name: "Digory", date: "10/01/92"}, @library.get_info("Matilda"))
end

def test_add_book
  @library.add_book("Jungle Book")
  assert_equal(3, @library.books.length)
end

def test_change_rental_details
  @library.change_rental_details("Matilda", "Joanna", "03/02/18")
  assert_equal({student_name: "Joanna", date: "03/02/18"}, @library.get_info("Matilda"))
end

end
