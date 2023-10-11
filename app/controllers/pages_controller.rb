class PagesController < ApplicationController
  before_action :authenticate_user!, except: %i[home]


  def export_users_to_csv
    @users = User.all
    respond_to do |format|
      format.csv do
        send_data @users.to_csv, filename: "user_data.csv"
      end
    end
    flash[:notice] = "CSV export job started. You will be notified when its finished."
  end


  def home
  end

  def dashboard
  end

end
