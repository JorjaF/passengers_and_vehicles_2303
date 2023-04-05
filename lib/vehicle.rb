class Vehicle
  attr_reader :year, :make, :model, :speeding, :passengers
  def initialize(year, make, model, speeding =false, passengers = [])
    @year = year
    @make = make
    @model = model
    @speeding = speeding
    @passengers = []
  end

  def speed
    @speeding = true
  end

  def add_passenger(passengers)
    @passengers << passenger
    {passengers.fetch_values(:name)}
  end
end