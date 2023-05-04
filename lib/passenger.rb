class Passenger
  attr_reader :name, 
              :age,
              :driver
  
  def initialize(passenger_info)
    @name = passenger_info["name"]
    @age = passenger_info["age"]
    @driver = false
  end

  def adult?
    @age >= 18
  end

  def driver?
    @driver
  end

  def drive
    @driver = true
  end

  def num_adults
    @passengers.count do |passenger|
      passenger.adult?
    end
  end
end
