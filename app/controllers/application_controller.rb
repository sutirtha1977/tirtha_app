class ApplicationController < ActionController::Base
  layout 'application'

  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  helper_method :current_order

  def current_order
    if !session[:order_id].nil?
      Order.find(session[:order_id])
    else
      Order.new
    end
  end

protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  end
  
private

  def confirm_logged_in
    unless session[:user_id]
      flash[:notice] = "Please log in."
      redirect_to(access_login_path)
      # redirect_to prevents requested action from running
    end
  end

  # def layout_by_resource
  #   if devise_controller?
  #     "devise"
  #   else
  #     "application"
  #   end
  # end
  
end
