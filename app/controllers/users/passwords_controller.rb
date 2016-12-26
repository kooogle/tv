class Users::PasswordsController < Devise::PasswordsController
  force_ssl if: :ssl_configured?
  layout 'user'

  def ssl_configured?
    !Rails.env.development?
  end
  # GET /forgot_password
  def new
    super
  end

  #POST /forgot_password
  def create
    self.resource = resource_class.send_reset_password_instructions(resource_params)
    yield resource if block_given?

    if successfully_sent?(resource)
      redirect_to sign_in_path
    else
      render :new
    end
  end

  # GET /reset_password?reset_password_token=abcdef
  def edit
    self.resource = resource_class.new
    resource.reset_password_token = params[:reset_password_token]
  end

  # PUT /reset_password
  def update
    self.resource = resource_class.reset_password_by_token(resource_params)
    yield resource if block_given?
    if resource.errors.empty?
      resource.unlock_access! if unlockable?(resource)
      flash_message = resource.active_for_authentication? ? :updated : :updated_not_active
      set_flash_message(:notice, flash_message) if is_flashing_format?
      sign_in(resource_name, resource)
      respond_with resource, location: after_resetting_password_path_for(resource)
    else
      render :edit
    end
  end

end
