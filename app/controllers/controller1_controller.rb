class Controller1Controller < ApplicationController
  def reservation
     @id = session[:user_id]
     # @account = User.find(@id).accounts[0]
  end

  def account
  end

  def feedback
  end

  def home
  end
  
  def form
  end
  
  def create
    @account = Account.new(book_params)
    if @account.save
        redirect_to @account
    end
  end
  
  
  
  
 def update
  @account = Account.find(params[:id])
     if @account.update_attributes(user_params)   
   flash[:success] = "Account information updated"
   redirect_to @account
else
  render 'edit'
  end
 end
  
end
