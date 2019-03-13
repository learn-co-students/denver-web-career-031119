require 'json'
require 'rest-client'
require 'pry'

require_relative './book.rb'

# potential method
puts "Enter search term"
search_term = gets.chomp.split(" ").join("+")

# potential method
response = RestClient.get("https://www.googleapis.com/books/v1/volumes?q=#{search_term}")
books = JSON.parse(response.to_str)

# potential method
books["items"].each do |book_data|
  book = Book.new(
    book_data["volumeInfo"]["title"],
    book_data["volumeInfo"]["authors"].to_a,
    book_data["volumeInfo"]["description"]
  ) # this will call initialize for the instance

  book.pretty_authors

  # book.title = book_data["volumeInfo"]["title"]
  # book.authors = book_data["volumeInfo"]["authors"].to_a
  # book.description = book_data["volumeInfo"]["description"]


  # potential method
  # puts "Title:\t\t#{book.title}"
  # puts "Author(s):\t#{book.authors.join(", ")}"
  # puts "Description:\t#{book.description}"
  # puts
end

binding.pry
