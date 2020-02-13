class UsersController < ApplicationController

def new
end

def create
	c = City.new(name: params[:new_user_city])
	user = User.new(first_name: params[:new_user_first_name], last_name: params[:new_user_last_name], age: params[:new_user_age], email: params[:new_user_email], description: params[:new_user_description], password: params[:new_user_pwd], city: c)

if user.save
	flash[:bene] = "Votre compte a bien été créé, veuillez vous rediriger vers la page login pour vous connecter"
	redirect_to index_path
else
	flash[:tromp] = "Tu t'es planté qlqpart, recommence"
	render new_user_path	
end
end

def destroy
end

def edit
end	

end
