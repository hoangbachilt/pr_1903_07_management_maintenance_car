class ApplicationController < ActionController::Base
  before_action :load_data
  protected
 
  def configure_permitted_parameters
    added_attrs = [:username, :email, :password, :password_confirmation, :remember_me, :avatar]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
  end

  def load_data
    @automotive_parts = AutomotivePart.paginate(page: params[:page], per_page: Settings.per_page)
    @service_packs = ServicePack.services_show(status: true).
                              paginate(page: params[:page], per_page: Settings.per_page)
    @title_automotive = TitleService.new(AutomotivePart.all).call
    @title_service = TitleService.new(ServicePack.all).call
  end
end
