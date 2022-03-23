class ApplicationController < ActionController::Base

  def after_sign_in_path_for(resource)
    habits_path
  end

end
