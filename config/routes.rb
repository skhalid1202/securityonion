Rails.application.routes.draw do
  resources :events
  get 'event/index'
  get 'event/new'
  post 'event/create'
  patch 'event/update'
  get 'event/index'
  get 'event/new'
  get 'event/update'
  get 'event/show_events'

  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
