require './lib/passenger'

RSpec.describe Passenger do 
  
  it "exists and has attributes" do
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    taylot = Passenger.new({"name" => "Taylor", "age" => 12})
    expect(charlie).to be_a(Passenger)
    expect(charlie.name).to eq("Charlie")
    expect(charlie.age).to eq(18)    
  end

  it "can tell if an adult" do
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    taylot = Passenger.new({"name" => "Taylor", "age" => 12})
    expect(charlie.adult?).to eq(true)
    expect(taylot.adult?).to eq(false)
  end

  it "can know who is the driver" do 
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    taylor = Passenger.new({"name" => "Taylor", "age" => 12})
    expect(charlie.driver?).to eq(false)
    charlie.drive
    expect(charlie.driver?).to eq(true)
  end
end
