require 'rails_helper'

RSpec.describe Groupe, type: :model do
  before :each do
    @user = User.create(name: 'Dan', email: 'dan@gmail.com', password: 'password123')
    sign_in @user
    @groupe = Groupe.create(name: 'Cinema', icon: 'https://www.thestreet.com', user: @user)
    @entity = Entity.create(name: 'First transaction', amount: 345, user: @user)
    @groupe.entities << @entity
  end

  it 'has a user named "Dan"' do
    expect(@groupe.user.name).to eq('Dan')
  end

  it 'has a user named "Dan"' do
    expect(@entity.user.name).to eq('Dan')
  end

  it 'has a name of "First transaction"' do
    expect(@entity.name).to eq('First transaction')
  end

  it 'has an amount of 345' do
    expect(@entity.amount).to eq(345)
  end

  it 'has a name of "Cinema"' do
    expect(@groupe.name).to eq('Cinema')
  end

  it 'has an icon of https://www.thestreet.com' do
    expect(@groupe.icon).to eq('https://www.thestreet.com')
  end
end
