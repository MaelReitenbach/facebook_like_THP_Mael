class SessionsController < ApplicationController

def new
end

def create
  user = User.find_by(email: params[:user_mail])
  
  if user && user.authenticate(params[:user_pwd])
    session[:user_id] = user.id
    flash[:conn] = 'Vous etes bien connecté'
    redirect_to index_path
  else
    flash.now[:danger] = 'Invalid email/password combination'
    render 'new'
  end
end

def destroy
	session.delete(:user_id)
	flash[:deconn] = 'Vous etes bien déconnecté'
	redirect_to index_path
end	


end
