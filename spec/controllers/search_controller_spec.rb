require 'rails_helper'

RSpec.describe SearchController, type: :controller do
  describe 'GET search_users' do
    it 'should find matching user with the same city and same hobby' do
      # Create a user with a specific city and hobby
      before(:each) do
        User = new( city: 'Berlin', hobbies: 'Football')
        User = new( city: 'Berlin', hobbies: 'Football')
      end


      # Send a request to the search_users action with the same city and hobby
      get :search_users

      # Expect the response to include the user
      expect(assigns(:matching_users)).to include(user)
    end

    it 'should find users with different city but the same hobby' do
      # Create a user with a different city but the same hobby
      before(:each) do
        User = new( city: 'Berlin', hobbies: 'Football')
        User = new( city: 'New York', hobbies: 'Football')
      end

      # Send a request to the search_users action with the same hobby but a different city
      get :search_users

      # Expect the response to include the user
      expect(assigns(:matching_users)).to include(user)
    end

    it 'should not find matching user' do
      # Create a user with a different city but the same hobby
      before(:each) do
        User = new( city: 'Berlin', hobbies: 'Football')
        User = new( city: 'New York', hobbies: 'Gaming')
      end

      # Send a request to the search_users action with the same hobby but a different city
      get :search_users

      # Expect the response to include the user
      expect(assigns(:matching_users)).to.not include(user)
    end

  end
end