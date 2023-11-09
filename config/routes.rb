Rails.application.routes.draw do
  resources :posts
  resources :pages # all of the seven routes listed below are conventional, and  can therefore be replaced with the call to resources while passing in the appropriate symbol

  # get requests for the pages path should go to the pages controller's index method
  #get '/pages', to: 'pages#index'
  #get '/pages/new', to: 'pages#new', as: 'new_page' # /pages/new route needs to be above the /pages/:id route in the file, otherwise the browser will interpret 'new' in the path as the id instead of routing appropriately to create a new page
  #post '/pages', to: 'pages#create'

  # adding the alias using as: allows rails to create a path helper allowing for easier code editing and reading and less errors with having to type "/pages/#{page.id}" in each link to this same path
  #get '/pages/:id', to: 'pages#show', as: 'page' # passing the instance variable 

  #get '/pages/:id/edit', to: 'pages#edit', as: 'edit_page'
  #patch '/pages/:id', to: 'pages#update'

  #delete '/pages/:id',  to: 'pages#destroy'




  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
