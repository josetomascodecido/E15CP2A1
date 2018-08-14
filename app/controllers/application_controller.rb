class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def logged_or_admin?
     current_user.try(:admin) == true || History.find(params[:id]).user_id == current_user.try(:id)
  end
end
