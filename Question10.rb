module Library
  @@global_library = []
  def how_many_books
    return @@global_library.length
  end
  def add_to_library book
    @@global_library.push book
  end
end

module BookHelperMethods
  def display_info
    puts "Book title is: #{title}"
    puts "Book contents is: #{contents}"
    puts "Book author is: #{author}"
  end
end

class Book
  extend Library
  attr_accessor :title
  attr_accessor :contents
  attr_accessor :author
  include BookHelperMethods
end

mybook = Book.new
mybook.title = "Best Book in the World"
mybook.contents = "crap"
mybook.author = "Donald Trump"
Book.add_to_library mybook
puts "There are #{Book.how_many_books.to_s} books in the library"
mybook.display_info
