# Object Relations - One to Many

## Learning goals
* Implement one object to many objects relationship
  * One object has many objects
  * One object belongs to another object
* Practice passing custom objects as arguments to methods
* Demonstrate single source of truth
* Infer type of method (class or instance) through naming conventions

## Outline
<!-- 15m Domains and Domain Modeling
 5m Introduce deliverables
10m Build the classes
10m Explore single source of truth
10m Student exercise
10m Review exercise
10m More on objects and methods (optional)
===
70m Total -->

### Domains and Domain Modeling

* What is a domain?
* What does a domain model do?


* **Model**: A class whose primary responsibility is to store data
* **Domain**: The subject matter of the problem, (e.g., Learn's domain is online education)
* **Domain modeling**: Creating models for your domain to represent real or abstract ideas (e.g., Learn's domain model includes modules, cohorts, assignments as well as their relationships)
* **Relationships**: How one model or thing is connected to another model or thing
  * **One to many relationship**: A relationship describing a single model that contains or keeps track of other models (a tree has many leaves, an organism has many cells, the universe has many galaxies)
  * **Many to many relationship**: Next time
  * **Other relationships**: Next time

### Deliverables

* Create a User class. The class should have these methods:
  * `User#initialize` which takes a username
  * `User#username` reader method
  * `User#tweets` that returns an array of Tweet instances
  * `User#post_tweet` that takes a message, creates a new tweet, and adds it to the user's tweet collection
* Create a Tweet class. The class should have these methods:
  * `Tweet#message` that returns a string
  * `Tweet#user` that returns an instance of the user class
  * `Tweet.all` that returns all the Tweets created.
  * `Tweet#username` that returns the username of the tweet's user

### Building classes
* Implement one object to many objects relationship
  * One object has many objects
  * One object belongs to another object
* Practice passing custom objects as arguments to methods

### Single Source of Truth
* Demonstrate single source of truth
* Infer type of method (class or instance) through naming conventions

### Student Exercise
* Implementing single source of truth in this example
