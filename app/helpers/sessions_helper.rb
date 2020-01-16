module SessionsHelper

    def log_out
    @user = User.find_by(username: params[:username])
    @user = nil
    reset_session
    end
    
end
