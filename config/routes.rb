Rails.application.routes.draw do
  resources :users
  resource :session

  resources :band do
    resources :album, except: [:new, :create, :edit]
  end

  resources :album, only: [:new, :create, :edit] do
    resources :track, except: [:new, :create, :edit]
  end 
  
  resources :track, only: [:new, :create, :edit]



end
