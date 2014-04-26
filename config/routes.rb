Rails.application.routes.draw do
  resources :users
  resource :session

  shallow do
    resources :bands do
      resources :albums do
        resources :tracks
      end
    end
  end


end
