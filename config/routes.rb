Rails.application.routes.draw do
  
  resources :cats, only: [:index, :show, :create, :destroy, :update ]
  resources :people, only: [:index, :show, :create, :destroy]
  # get 'cats/index'
  # get 'cats/show'
  # get 'people/index'
  # get 'people/show'
end
