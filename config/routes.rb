Marketplace::Application.routes.draw do
  
  resources :ratings

  resources :apps do
    resources :ratings
    # Route
    get 'install', :on => :member
    get 'uninstall', :on => :member
    get 'installed', :on => :collection

  end

  resources :users

end
