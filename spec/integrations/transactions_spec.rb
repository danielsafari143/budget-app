require 'capybara/rspec'
require 'capybara/dsl'

describe 'Transactions page', type: :feature do
  include Capybara::DSL

  before :each do
    @user = User.create(name: 'Dan', email: 'dan@gmail.com', password: 'password123')
    sign_in @user
    @groupe = Groupe.create(name: 'Cinema', icon: 'https://www.thestreet.com', user: @user)
    @entity = Entity.create(name: 'First transaction', amount: 345, user: @user)
    @groupe.entities << @entity
    visit "/groupe/#{@groupe.id}"
  end

  it 'should have a header with the text "TRANSATIONS"' do
    expect(page).to have_selector('.cate', text: 'TRANSATIONS')
  end

  it 'should have a total payment' do
    expect(page).to have_selector('.price', text: '$345')
  end

  it 'should have a list of transactions' do
    expect(page).to have_selector('.main-list')
    expect(page).to have_selector('.list-item', count: 1)
  end

  it 'should have a button to create a new transaction' do
    expect(page).to have_button('Add Transaction')
  end
end
