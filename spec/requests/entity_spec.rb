require 'rails_helper'

RSpec.describe 'Entity', type: :request do
  before :each do
    @user = User.create(name: 'Test', email: 'test2@example.com', password: 'password')
    sign_in @user
    @groupe = Groupe.create(name: 'Cinema', icon: 'https://www.thestreet.com', user: @user)
    @entity = Entity.create(name: 'First transaction', amount: 345, user: @user)
    @groupe.entities << @entity
  end

  describe 'GET #new' do
    it 'returns a successful response' do
      get "/groupe/#{@groupe.id}/entity/new"
      expect(response).to have_http_status(200)
    end

    it 'renders the categorie\'s form' do
      get "/groupe/#{@groupe.id}/entity/new"
      expect(response).to render_template('new')
    end
  end
end
