require './lib/passenger'

RSpec.describe Passenger do 

  it 'exists' do
    charlie = Passenger.new({"name" => "Charlie", "age" => 18}) 
    taylor = Passenger.new({"name" => "Taylor", "age" => 12}) 
    expect(charlie).to be_an_instance_of(Passenger)
  end

  it "has atttibutes" do
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    taylor = Passenger.new({"name" => "Taylor", "age" => 12})
    expect(charlie.name).to eq("Charlie")
    expect(charlie.age).to eq(18)
    expect(taylor.name).to eq("Taylor")
    expect(taylor.age).to eq(12)
  end

  it "can be an adult" do
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    taylor = Passenger.new({"name" => "Taylor", "age" => 12})
    expect(charlie.is_adult).to eq(true)
    expect(taylor.is_adult).to eq(false)
  end
   
  it "can be the driver" do
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    taylor = Passenger.new({"name" => "Taylor", "age" => 12})
    expect(charlie.driver).to eq(false)
    expect(taylor.driver).to eq(false)
    charlie.drive
    expect(charlie.driver).to eq(true)
    expect(taylor.driver).to eq(false)
  end 
end