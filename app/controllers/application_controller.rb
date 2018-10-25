class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :tasks

  protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:account_update, keys: [:name, :sex, :weight, :height, :age, :photo, :physical_activity_level])
    end

  def tasks
    if user_signed_in?
      if current_user.weight == nil
      #  redirect_to edit_user_registration_path
      end
    end
  end

end
