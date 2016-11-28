require('rspec')
require('parcels')

describe('Parcel#check_price') do
  it('calculate the volume') do
    new_parcel = Parcel.new(3,3,3,20,1,1,0)
    expect(new_parcel.volume()).to(eq(27))
  end
  it('calculate the cost of the ship based on speed of delivery') do
    new_parcel = Parcel.new(3,3,3,5,1,1,0)
    expect(new_parcel.cost()).to(eq(18.63))
  end
  it('calculate the cost of ship based on distance') do
    new_parcel = Parcel.new(3,3,3,5,20,1,0)
    expect(new_parcel.cost()).to(eq(22.17))
  end
  it('calculate the cost of ship based on dimensions') do
    new_parcel = Parcel.new(4,5,6,2,12,1,0)
    expect(new_parcel.cost()).to(eq(94.31))
  end
  it('calculate the cost of ship based on weight') do
    new_parcel = Parcel.new(4,5,6,2,12,3,0)
    expect(new_parcel.cost()).to(eq(100.91))
  end
  it('calculate the cost of ship including wrapping services') do
    new_parcel = Parcel.new(4,5,6,2,12,3,1)
    expect(new_parcel.cost()).to(eq(111.36))
  end
  it('discount the cost of ship based date') do
    new_parcel = Parcel.new(4,5,6,30,12,3,1)
    expect(new_parcel.cost()).to(eq(84.94))
  end
end
