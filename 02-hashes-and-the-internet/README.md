# Hashes and the Internet

## SWBATs

* Recognize the parts of the request-response lifecycle
  * Define client and describe setting up the request
  * Define server and describe how the response is formatted
  * Identify HTML as a response type
  * Identify and define JSON
* Define Application Programming Interface \(API\)
  * Describe the API of a Ruby Array
  * Explain the uses of an API on the internet
* Practice making requests to an API and parsing and examining the result
* Practice writing a command line application \(CLI\)

## Outline

```text
 5m   Intro
 5m   How the internet works
 5m   Ruby gems for working with APIs
15m   Making requests to Google Books API
15m   Student Exercise
15m   Refactoring with Single Responsibility Principle
===
 1h   Total
```

### Intro

### How the internet works

* https://www.reddit.com/r/AskProgramming/
* https://www.reddit.com/r/AskProgramming/.json
* What is JSON?
  * JSON View Chrome extension
  * Writing Ruby code to get the data from the browser

### Ruby gems for working with APIs

* We'll be using `rest-client` and `json` (`gem install rest-client`)
* Other gems we can use to make requests
  * Net::HTTP (default)
  * Net::HTTP::Persistent
  * Excon
  * Patron
  * EventMachine
  * HTTPClient

### Making requests to Google Books API

* API: https://www.googleapis.com/books/v1/volumes?q=ruby+programming
* How do we print out a list of books and authors?
  * Make a request with Ruby
  * Deal with that request
  * ???
  * Loop through books
  * Print out each book title and authors

### Student Exercise

1. Write an application that takes a search term from a user
2. Make a Request to the GoogleBooks API and get back some results
3. Display the titles, author names, and description for each book

### Refactoring with Single Responsibility Principle

* Let's take the code we've written
* How can we think through breaking this problem down
  * What are the responsibilities of this method?
  * Can we break these responsibilities down into
