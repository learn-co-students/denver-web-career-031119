# Intro to OO

## Scenario
* Plan and write an program which searches the Google Books API and
* Creates `Book` objects and `Author` objects for each book and their authors
* Save all the `Book`s in an array and all the `Author`s in an array
* Ensure that no `Author` is created more than once

## Outline

### What are objects?
* Define object in programming domain
* Explain the concept of sending messages

```
o = Object.new # <Object:0x007f870d02d550>
o.object_id # 70109007801000

# Where does object ID come from?
# https://stackoverflow.com/questions/2818602/in-ruby-why-does-inspect-print-out-some-kind-of-object-id-which-is-different
(o.object_id * 2).to_s(16) # 7f870d02d550
"%x" % (o.object_id << 1) # 7f870d02d550
```

### Class versus instance
* Create a class and instantiate an instance of the class
* Explain the difference between a class and an instance
* Pass arguments to new by defining an initialize method in class
* Create instance methods

### Attributes and Scope
* Define attribute readers and writers using `attr_` macros
* Explain the need for variable scope and why it's important to not utilize global variables

### `self`
* Call methods on the implicit or explicit self
