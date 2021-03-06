class Users::RegistrationsController < Devise::RegistrationsController
# before_filter :configure_sign_up_params, only: [:create]
# before_filter :configure_account_update_params, only: [:update]
  prepend_before_filter :require_no_authentication, only: [:cancel ]
  layout 'application'
  def index
    super
  end
  # GET /resource/sign_up
  def new
    @user = User.new
   #  super
  end

  # POST /resource
   def create
     @user = User.new(user_params)
     @user.password = Devise.friendly_token.first(8)
     if @user.role_id < 1
       @user.role_id = 1
     end
     respond_to do |format|
       if @user.save
         if @user.role_id == 3
           format.html { redirect_to root_path, notice: 'Candidate was successfully created.' }
         else
           format.html { redirect_to users_path, notice: 'User was successfully created.' }
         end

         format.json { render :show, status: :created, location: @user }
       else
         format.html { render :new }
         format.json { render json: @user.errors, status: :unprocessable_entity }
       end
     end
   end

  # GET /resource/edit
  # def edit
  #   super
  # end

  # PUT /resource
  # def update
  #   super
  # end

  # DELETE /resource
  # def destroy
  #   super
  # end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_up_params
  #   devise_parameter_sanitizer.for(:sign_up) << :attribute
  # end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_account_update_params
  #   devise_parameter_sanitizer.for(:account_update) << :attribute
  # end

  # The path used after sign up.
  # def after_sign_up_path_for(resource)
  #   super(resource)
  # end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end

  private
  def user_params
    params.require(:user).permit(:first_name, :middle_name, :last_name, :email)
  end
end
