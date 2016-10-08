class SessionsController < Devise::SessionsController
  before_filter :configure_permitted_parameters
  protected

  def configure_permitted_parameters

    devise_parameter_sanitizer.permit(:sign_up, 
      keys: [:username, :email, :password, :password_confirmation)
    
    # devise_parameter_sanitizer.permit(:sign_up, 
    #   keys: [:username, :email, :password, :password_confirmation, 
    #   :products, :product_name, :needed_product_name, 
    #   :supplied_product_name, :needed_service_name, 
    #   :supplied_service_name, 
    #   needed_services_attributes: [:needed_service_name], 
    #   supplied_services_attributes: [:supplied_service_name],
    #   needed_products_attributes: [:needed_product_name], 
    #   supplied_products_attributes: [:supplied_product_name],
    #   finds_attributes: [:search_term, :search_type]])

     # devise_parameter_sanitizer.permit(:sign_up) do |user_params|
      # user_params.permit({ roles: [] }, :username, :email, :password, :password_confirmation)
     # end
  end

end