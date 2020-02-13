class GossipsController < ApplicationController
  before_action :authenticate_user, except: [:all]

  def all
    puts "On affiche l'accueil".red
  end

  def show
    puts "On affiche un potin".red
    @gossip = Gossip.find(params[:id])
    @author = Gossip.find(params[:id]).user.first_name
    @auteurville = Gossip.find(params[:id]).user.city.name
  end 

#  def index
#    redirect_to index_path
#  end  

  def new
  end

  def create
    g = Gossip.new(title: params[:gossip_title], content: params[:gossip_content], user: current_user)

    if g.save
      flash[:success] = "Gossip enregistré!"
      redirect_to index_path
    else
      flash[:non] = "échec, réessaye"
      render new_gossip_path
    end  
  end 


  def new_post
  end

  def edit
    
    if current_user != Gossip.find(params[:id]).user
      flash[:danger] = "Please log in."
      redirect_to new_session_path
    else
    puts "On edite un potin".red
    @gossip = Gossip.find(params[:id])
    @author = current_user.first_name
  end
  end

  def edit_post
     Gossip.find(params[:id]).title = params[:changed_title]
    Gossip.find(params[:id]).content = params[:changed_content]
  end

  def delete
  end

  def author_show
    puts "On affiche un author".red
    @author = User.find(params[:id])
  end

  def city_show
    @city = City.find(params[:id])
  end  

private

def authenticate_user
    unless current_user
      flash[:danger] = "Please log in."
      redirect_to new_session_path
    end
  end

end
