class Passenger

  attr_reader :name, :age, :driver

  def initialize(arguments)
    @name = arguments["name"]
    @age = arguments["age"]
    @driver = false
  end

  def is_adult
    if age >= 18
      true
    else
      false
    end
  end

  def drive
    if age >= 18 
      @driver = true
    else
      false
    end
  end
end