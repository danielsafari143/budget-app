require 'rails_helper'

describe 'Categories page', type: :feature do
  include Capybara::DSL
  before :each do
    @user = User.create(name: 'Dan', email: 'dan@gmail.com', password: 'password123')
    sign_in @user
    @groupe = Groupe.create(name: 'Cinema', icon: 'https://www.thestreet.com', user: @user)
    @entity = Entity.create(name: 'First transaction', amount: 345, user: @user)
    @groupe.entities << @entity
    visit '/groupe'
  end

  it 'should have a header with the text "CATEGORIES"' do
    expect(page).to have_selector('.cate', text: 'CATEGORIES')
  end

  it 'should have a search icon' do
    expect(page).to have_selector('.bi-search')
  end

  it 'should have a list of categories' do
    expect(page).to have_selector('.main-list')
    expect(page).to have_selector('.list-item', count: 1)
  end

  it 'should have a button to create a new category' do
    expect(page).to have_button('Create Category')
  end
end
