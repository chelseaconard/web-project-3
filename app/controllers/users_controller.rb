class UsersController < ApplicationController
  def new
    @user = User.new
  end
  
  def show
    @user = User.find(params[:id])
  end
  
  def create
   @user = User.new(user_params)
   if @user.save
       flash[:success] = "Account created successfully!"
        redirect_to @user 
        log_in @user
  else 
       flash[:alert] = "Account not created successfully, you need to make sure and follow email and password field rules"
       render 'new' 
  end
  end
  
   def edit
    @user = User.find(params[:id])
   end
  
   def update
   @user = User.find(params[:id])
   if @user.update_attributes(user_params)   
     flash[:success] = "Profile updated"
     redirect_to @user
   else
     render 'edit'
   end
  end
  
  
 private
  
  def user_params
	params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

end

