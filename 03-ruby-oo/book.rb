# require 'pry'

# -Need to create a class called Book-
# Hold on to title, authors, and description
  # Attribute macros, instance variable
# Print out a version of itself (with title, authors, and description)

# Create a method to `get_me_all_the_books`
  # -What happens when a book is created-
  # -Where might we store all of the books (array/hash)-
  # -How do we access all of the books-

class Book
  # What is a macro?
  attr_reader :authors
  attr_accessor :title, :description

  @@all = [] # only create class variables in the class scope

  def initialize(title, authors, description)
    @title = title
    @authors = authors
    @description = description

    # binding.pry # inside an instance method === self == instance

    @@all << self # what is self?
  end

  # binding.pry # outside of any method === Book

  # Book.all
  def self.all # what is self?
    # binding.pry # inside a class method
    @@all
  end

  # # my_book.title
  # def title
  #   @title # default to a value of nil, and it will not give you an error
  # end

  # my_book.title=('new title')
  # my_book.title = 'new title'
  # my_variable = "some value"
  # def title=(new_title)
  #   @title = new_title
  # end

  # my_book.authors
  # def authors
  #   @authors # default to a value of nil, and it will not give you an error
  # end

  # my_book.authors=('new authors')
  # my_book.authors = 'new authors'
  # my_variable = "some value"
  def authors=(*new_authors)
    @authors = new_authors[0] # hack for today
  end

  # # my_book.description
  # def description
  #   @description # default to a value of nil, and it will not give you an error
  # end

  # my_book.description=('new description')
  # my_book.description = 'new description'
  # my_variable = "some value"
  # def description=(new_description)
  #   @description = new_description
  # end

  def pretty_authors
    authors.join(", ") # implicit self
    # self.authors.join(", ") # explicit self
  end

end
