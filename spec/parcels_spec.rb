require('rspec')
require('parcels')

describe('Parcel#check_price') do
  it('calculate the volume') do
    new_parcel = Parcel.new(3,3,3,20,1,1)
    expect(new_parcel.volume()).to(eq(27))
  end
  it('calculate the cost of the ship based on speed of delivery') do
    new_parcel = Parcel.new(3,3,3,5,1,1)
    expect(new_parcel.cost()).to(eq(21.87))
  end
  it('calculate the cost of ship based on distance') do
    new_parcel = Parcel.new(3,3,3,5,20,1)
    expect(new_parcel.cost()).to(eq(26.03))
  end
  it('calculate the cost of ship based on dimensions') do
    new_parcel = Parcel.new(4,5,6,2,12,1)
    expect(new_parcel.cost()).to(eq(119.88))
  end
  it('calculate the cost of ship based on weight') do
    new_parcel = Parcel.new(4,5,6,2,12,3)
    expect(new_parcel.cost()).to(eq(111.49))
  end
end
