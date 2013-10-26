Marketplace::Application.routes.draw do
  
  resources :ratings

  resources :apps do
    resources :ratings
    # Route
    get 'download', :on => :member

  end

  resources :users

end
