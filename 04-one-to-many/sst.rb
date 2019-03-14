class DeliLine
  attr_reader :customers

  def initialize()
    @customers = []
  end

  def add_customer(customer)
    @customers << customer
  end

end

class DeliCustomer

  def initialize(name)
    @name = name
  end

end
