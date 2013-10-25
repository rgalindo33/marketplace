Marketplace::Application.routes.draw do
  
  resources :ratings

  resources :apps do
    resources :ratings
  end

  resources :users

end
