# app/controllers/search_controller.rb
class SearchController < ApplicationController

  layout 'pages/dashboard' # Specify the layout if needed
  def search_users
    @matching_users = HobbyFinderService.new(current_user).find_matching_users
    puts @matching_users.first.first_name

  end
end
