Marketplace::Application.routes.draw do

  root to: "apps#index"

  resources :apps, only:[:index,:show] do
    
    member do
      get 'install'
      get 'uninstall'
    end  
    
    collection do
      get 'installed'
      get 'search'
    end
  
  end
end
