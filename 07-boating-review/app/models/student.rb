class Student
  @@all = []
  attr_reader :first_name

  def initialize(first_name)
    @first_name = first_name

    @@all << self
  end

  def self.all
    @@all
  end

  def add_boating_test (test_name, status, instructor)
    BoatingTest.new(self, test_name, status, instructor)
  end

  def self.find_student(first_name)
    @@all.find {|student|
      first_name == student.first_name
    } 
  end

  def tests
    BoatingTest.all.select {|test|
      test.student == self
    }
  end

  def passed_tests
    self.tests.select {|test|
      test.status == "passed"
    }
  end

  def find_percentage
    self.passed_tests.count.to_f / self.tests.count
  end
end
