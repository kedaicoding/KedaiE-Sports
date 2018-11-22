Rails.application.routes.draw do
  devise_for :coaches
  resources :teams do 
    resources :roosters
  end
  resources :coaches
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
