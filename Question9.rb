class Book
  attr_accessor :title
  attr_accessor :chapters

  def initialize
    @ichapters = []
  end

  def add_chapter chapter
    @ichapters.push chapter
  end

  def chapters
    puts "Your book: #{title}"
    @ichapters.each_index do |ix|
      puts "#{(ix + 1).to_s}. #{@ichapters[ix]}"
    end
  end
end

mybook = Book.new
mybook.title = "My Awesome Book"
mybook.add_chapter("My Awesome Chapter 1")
mybook.add_chapter("My Awesome Chapter 2")
mybook.chapters
