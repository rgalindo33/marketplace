Marketplace::Application.routes.draw do

  root to: "apps#index"

  resources :apps, only:[:index,:show] do
    
    member do
      get 'install'
      get 'uninstall'
    end  
    get 'installed', on: :collection
  
  end
end
