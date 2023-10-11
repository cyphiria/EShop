class HobbyFinderService
  def initialize(current_user)
    @current_user = current_user
  end

  def find_matching_users
    city = @current_user.city
    hobby = @current_user.hobbies # Assuming hobbies is an array field

    # Find users with the same city and hobby
    matching_users = User.where(city: city).where(hobbies: hobby).where.not(id: @current_user.id)

    if matching_users.empty?
      matching_users = User.where.not(id: @current_user.id).where.not(hobbies: hobby)

      if matching_users.empty?
        return "no one"
      end
    end

    matching_users

  end
end