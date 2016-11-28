require('sinatra')
require('sinatra/reloader')
require('./lib/parcels')
also_reload('./lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/parcel') do
  new_parcel = Parcel.new(params.fetch('length').to_i, params.fetch('width').to_i, params.fetch('height').to_i, params.fetch('maxDays').to_i, params.fetch('distance').to_i, params.fetch('weight').to_i, 0)
  @cost = new_parcel.cost()
  erb(:index)
end
