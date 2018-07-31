Rails.application.routes.draw do
  get '/', to: 'users#home'
  get 'users/new', to: 'users#new', as: 'new'
  post 'users/new', to: 'users#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
