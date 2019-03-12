# Hashes and the Internet
#
# 1. Write an application that takes a search term from a user
# 2. Make a Request to the GoogleBooks API and get back some results
# 3. Display the titles, author names, and description for each book

require 'json'
require 'rest-client'
require 'pry'

# RestClient.get(<url>) => make a request, returns a response
# JSON.parse(<JSON String>) => Ruby object (Hash, String, Array, ...)

def get_search_term
  puts "Enter search term"
  search_term = gets.chomp.split(" ").join("+")
end

def get_books(search_term)
  response = RestClient.get("https://www.googleapis.com/books/v1/volumes?q=#{search_term}")
  books = JSON.parse(response.to_str)
end

def print_books(books)
  books["items"].each { |book| print_book(book) }
end

def print_book(book)
  puts
  puts "Title:\t\t#{book["volumeInfo"]["title"]}"
  puts "Author(s):\t#{book["volumeInfo"]["authors"].to_a.join(", ")}"
  puts "Description:\t#{book["volumeInfo"]["description"]}"
end

def run
  search_term = get_search_term()
  books = get_books(search_term)
  print_books(books)
end

# this little line runs the whole program!
run
