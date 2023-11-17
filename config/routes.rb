Rails.application.routes.draw do
  resources :posts do
    # implementing a nested route here so that the following routes will utilize the word "post" as well as the appropriate ids in the routes and aliases
    # get '/comments', to: 'comments#index', as: 'comments'
    # post '/comments', to: 'comments#create'
    # get '/comments/new', to: 'comments#new', as: 'new_comment'
    # get '/comments/:id', to: 'comments#show', as: 'comment'
    # get '/comments/:id/edit', to: 'comments#edit', as: 'edit_comment'
    # patch '/comments/:id', to: 'comments#update'
    # delete '/comments/:id', to: 'comments#destroy'

    # able to shorten the above routes to one single line 
    resources :comments
  end

  resources :pages # all of the seven routes listed below are conventional, and  can therefore be replaced with the call to resources while passing in the appropriate symbol

  # get '/pages', to: 'pages#index'
  # get '/pages/new', to: 'pages#new', as: 'new_page'
  # /pages/new route needs to be above the /pages/:id route in the file, otherwise the browser will interpret 'new' in the path as the id instead of routing appropriately to create a new page
  # post '/pages', to: 'pages#create'
  # adding the alias using as: allows rails to create a path helper allowing for easier code editing and reading and less errors with having to type "/pages/#{page.id}" in each link to this same path
  # get '/pages/:id', to: 'pages#show', as: 'page' # passing the instance variable 
  # get '/pages/:id/edit', to: 'pages#edit', as: 'edit_page'
  # patch '/pages/:id', to: 'pages#update'
  # delete '/pages/:id',  to: 'pages#destroy'

  # ~~~SETTING UP ROUTES FOR COMMENTS:~~~
  # get '/posts/:post_id/comments', to: 'comments#index', as: 'post_comments'
  # post '/posts/:post_id/comments', to: 'comments#create'
  # get '/posts/:post_id/comments/new', to: 'comments#new', as: 'new_post_comment'
  # get '/posts/:post_id/comments/:id', to: 'comments#show', as: 'post_comment'
  # get '/posts/:post_id/comments/:id/edit', to: 'comments#edit', as: 'edit_post_comment'
  # patch '/posts/:post_id/comments/:id', to: 'comments#update'
  # delete '/posts/:post_id/comments/:id', to: 'comments#destroy'
  # instead of specifying '' in each route, we can use nested routes - nesting routes under a resource will ad an id param for that resource at the start of each nested route path and the resources name to the start of each alias following the as: keyword (and this will eliminate a lot of the repetition we see above)


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
