Spree::Core::Engine.add_routes do
  namespace :admin, path: Spree.admin_path do
    resources :pages
  end

  #constraints(Spree::Pages::RoutesConstraints) do
  #  get '/(*path)', to: 'pages#show', as: 'page'
  #end
  
  get '/:slug', to: 'pages#show', as: 'page'
  
end