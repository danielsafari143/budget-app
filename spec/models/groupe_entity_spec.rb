require 'rails_helper'

RSpec.describe GroupeEntity, type: :model do
  before :each do
    @user = User.create(name: 'Dan', email: 'dan@gmail.com', password: 'password123')
    sign_in @user
    @groupe = Groupe.create(name: 'Cinema', icon: 'https://www.thestreet.com', user: @user)
    @entity = Entity.create(name: 'First transaction', amount: 345, user: @user)
    @groupe.entities << @entity
  end

  it 'has a user name of "Dan"' do
    expect(@groupe.entities.first.user.name).to eq('Dan')
  end

  it 'has a description of "First transaction"' do
    expect(@groupe.entities.first.name).to eq('First transaction')
  end

  it 'has an amount of 345' do
    expect(@groupe.entities.first.amount).to eq(345)
  end
end
