# Class macros
class Book
  # attr_accessor creates both reader and writer methods
  attr_accessor :title, :author
  
  # attr_reader creates only a reader method
  attr_reader :isbn
  
  # attr_writer creates only a writer method
  attr_writer :publisher

  def initialize(title, author, isbn, publisher)
    @title = title
    @author = author
    @isbn = isbn
    @publisher = publisher
  end

  # Simple deprecate method to warn about deprecated methods
  def self.deprecate(old_method, new_method)
    define_method(old_method) do |*args, &block|
      warn "Warning: #{old_method}() is deprecated. Use #{new_method}() instead."
      send(new_method, *args, &block)
    end
  end

  # Example of deprecating the :publish method in favor of :publish_book
  def publish_book
    puts "Book published."
  end
  deprecate :publish, :publish_book
end

# Usage
book = Book.new("Book Name", "Author Name", "ISBN", "Publisher")
puts book.title       # Accessing the title
book.publisher = "New Publisher" # Changing the publisher
book.publish          # Using the deprecated method

