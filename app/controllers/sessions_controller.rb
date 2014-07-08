class SessionsController < ApplicationController
  def new
  end
  
  def create
    pass_digest = Digest::SHA1.hexdigest(params[:password])
    session[:password_digest] = pass_digest
    flash[:success] = "Successfully logged in" if pass_digest == admin_digest
    redirect_to root_path
  end
    
  def destroy
    reset_session
    flash[:success] = "Successfully logged out"
    redirect_to root_path
  end
end
