class Park  
  
  attr_reader :name,
              :admission_price,
              :vehicles,
              :passengers,
              :revenue

  def initialize(name, admission_price)
    @name = name
    @admission_price = admission_price
    @vehicles = []
    @passengers = []
    @revenue = 0
  end

  def add_vehicle(vehicle)
    @vehicles << vehicle
  end

  def add_passenger(passenger)
    @passengers << passengers
  end

  def revenue
    adult= []
    @passengers.select do |passenger|
      passenger.age >= 18
      adult.count * @admission_price
    end
  end
end
