class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  rescue_from CanCan::AccessDenied do |exception|
    redirect_to main_app.root_url, :alert => exception.message
  end
<<<<<<< HEAD
  def after_sign_in_path_for(resource)
  	# return the path based on resource
  	products_path
  end
=======
>>>>>>> 2442c3f1abaffd1eb2c72e16d78c488d164d6e1f
end