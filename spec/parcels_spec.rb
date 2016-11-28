require('rspec')
require('parcels')

describe('Parcel#check_price') do
  it('calculate the volume') do
    new_parcel = Parcel.new(3,3,3,20)
    expect(new_parcel.volume()).to(eq(27))
  end
  it('calculate the cost of the ship based on speed of delivery') do
    new_parcel = Parcel.new(3,3,3,5)
    expect(new_parcel.cost()).to(eq(14.58))
  end
end
