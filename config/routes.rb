Rails.application.routes.draw do
 
  root to: 'pages#home'
  
  get '/login'    => 'session#new'     # show the login form
  post '/login'   => 'session#create'  # form submits to here, performs login, redirect
  delete '/login' => 'session#destroy' # logout link goes here, perform logout, redirect

  get '/signup'             => 'users#new',as: 'new_user'
  post '/signup'            => 'users#create'
  get '/profile'            => 'users#index', as: 'index_user'
  get '/profile/:id'        => 'users#show', as: 'user'
  get '/profile/:id/edit'   => 'users#edit', as: 'edit_user'
  patch '/profile/:id'      => 'users#update'
  get '/profile/:id/delete' => 'users#destroy',as: 'destroy_user'
  resources :users 


  get '/projects/new' => 'projects#new',as: 'new_project'
  post '/projects/'    => 'projects#create'
  get '/projects'     => 'projects#index'
  get '/projects/:id' => 'projects#show',as: 'project'
  get '/projects/:id/edit' => 'projects#edit',as: 'edit_project'
  patch '/projects/'    => 'projects#update'
  get '/projects/:id/delete' => 'projects#destroy',as: 'destroy_project'
  resources :projects # error without resources for "project#update"

  resources :libraries
  post '/libraries/add/:project_id' => 'libraries#add_project', as: 'library_add_project'
  

  resources :mixtapes
  #     mixtapes GET    /mixtapes(.:format)          mixtapes#index
  #              POST   /mixtapes(.:format)          mixtapes#create
  #  new_mixtape GET    /mixtapes/new(.:format)      mixtapes#new
  # edit_mixtape GET    /mixtapes/:id/edit(.:format) mixtapes#edit
  #      mixtape GET    /mixtapes/:id(.:format)      mixtapes#show
  #              PATCH  /mixtapes/:id(.:format)      mixtapes#update
  #              PUT    /mixtapes/:id(.:format)      mixtapes#update
  #              DELETE /mixtapes/:id(.:format)      mixtapes#destroy

end