Rails.application.routes.draw do
  get 'roosters/index'
  get 'roosters/show'
  get 'roosters/edit'
  get 'roosters/update'
  get 'roosters/delete'
  get 'roosters/index'
  get 'roosters/create'
  resources :coaches
  resources :teams
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
