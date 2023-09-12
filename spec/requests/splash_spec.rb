require 'rails_helper'

RSpec.describe 'Splashes', type: :request do
  describe 'GET #index' do
    it 'returns a successful response' do
      get '/'
      expect(response).to have_http_status(200)
    end

    it 'renders the index template' do
      get '/groupe/groupe'
      expect(response).to have_http_status(302)
    end
  end
end
