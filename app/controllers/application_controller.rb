class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :cart
    # Save the cart in the session.
    # Load the cart from the session, or create a new empty cart.
    def cart
      cart = session[:cart] || []
      session[:cart] = cart
      cart
    end

end
