class ApplicationController < ActionController::Base
  protect_from_forgery
  #helper_method :current_user
  #helper_method :user_signed_in?
  helper_method :correct_user?
  helper_method :admin_signed_in?


  before_filter :configure_permitted_parameters, :if => :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :name
  end

  private
    #def current_user
    #  begin
    #    @current_user ||= User.find(session[:user_id]) if session[:user_id]
    #  rescue Exception => e
    #    nil
    #  end
    #end
    #
    #def user_signed_in?
    #  true if current_user
    #end

    def correct_user?
      @user = User.find(params[:id])
      unless current_user == @user
        redirect_to root_url, :alert => "Access denied."
      end
    end

    #def authenticate_user!
    #  if !current_user
    #    redirect_to root_url, :alert => 'You need to sign in for access to this page.'
    #  end
    #end

    def admin_signed_in?
      #TODO check roles of user.id, after cancan+rolify is fixed
      true if current_user and current_user.id == 1
    end


  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_path, :alert => exception.message
  end

end
