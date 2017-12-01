module SessionsHelper
    def log_in(user)
        session[:user_id] = user.id #saves the id of the user to the session hash
    end
#The session method is defined by Rails and acts like a hash where we can store pertinent information such as the user.id. session places a temporary cookie on the user’s browser with an encryption of the user.id. We can retrieve the user.id at anytime to ensure that the user is logged into the application. 

    def current_user
        @current_user ||= User.find_by(id: session[:user_id])
#this could also be written as: 
#@current_user = @current_user || User.find_by(id: session[:user_id])
#this means that if the @current_user is not nil, return it, otherwise, assign to it the User object with the specified id. 
    end

    def logged_in?
        !current_user.nil? #returns true if the user is logged in and false otherwise. This can of course be implemented differently.
    end

def  log_out
   session.delete(:user_id) 
   @current_user = nil
end

end