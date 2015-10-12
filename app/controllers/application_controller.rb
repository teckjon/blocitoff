class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
<<<<<<< HEAD
  before_action :authenticate_user!
=======
  before_action :authenticate_user!  
>>>>>>> aa8eaa2aab64142eeba4366a55a62e5d7afdb1e8
end
