require('Capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe('parcel services calculator', {:type => :feature}) do
  it('returns the total cost of the parcel without wrapping') do
    visit('/')
    fill_in('length', :with => 3)
    fill_in('width', :with => 3)
    fill_in('height', :with => 3)
    fill_in('maxDays', :with => 5)
    fill_in('distance', :with => 20)
    fill_in('weight', :with => 1)
    uncheck('wrap')
    click_button('Calculate')
    expect(page).to have_content('22.17')
  end
  it('returns the total cost of the parcel with wrapping') do
    visit('/')
    fill_in('length', :with => 4)
    fill_in('width', :with => 5)
    fill_in('height', :with => 6)
    fill_in('maxDays', :with => 2)
    fill_in('distance', :with => 12)
    fill_in('weight', :with => 3)
    check('wrap')
    click_button('Calculate')
    expect(page).to have_content('111.36')
  end
end
