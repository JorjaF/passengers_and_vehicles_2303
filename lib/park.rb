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

  def revenue
    adults = 0
    @vehicles.map do |vehicle|
      adults = vehicle.passengers.select do |passenger| 
        passenger.age >= 18
      end
    end
        revenue = adults.count * @admission_price
      revenue
    end
end
