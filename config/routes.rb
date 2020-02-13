Rails.application.routes.draw do
#accueil
#get '/', to: 'gossips#all'
root 'gossips#all', as: 'index'

#team
get '/team', to: 'static_pages#team', as: 'team'
#contact
get '/contact', to: 'static_pages#contact', as: 'contact'
#bienvenue
get '/welcome/:user_entry', to: 'messages#show', as: 'welcome'

resources :gossips

# afficher les potins - get
# créer nouveau potin - get / post / redirect
#get '/gossip/new', to: 'gossips#new'
#post '/gossip/new', to: 'gossips#new_post'
# afficher un potin - get(id)
#get '/gossip/:id', to: 'gossips#show', as: 'gossip'
# modifier un potin - get / post / redirect
#get '/gossip/:id/edit', to: 'gossips#edit'
post '/gossip/:id/edit', to: 'gossips#edit_post'
# effacer un potin - get / post / redirect
#get '/gossip/:id/delete', to: 'gossips#delete'
#post '/gossip/:id/delete', to: 'gossips#delete_post'
# afficher l'auteur d'un potin - get(id)
get '/author/:id', to: 'gossips#author_show', as: 'author'
get '/city/:id', to: 'gossips#city_show', as: 'city'

resources :sessions, only: [:new, :create, :destroy]

resources :users, only: [:new, :create, :destroy, :edit]



end
