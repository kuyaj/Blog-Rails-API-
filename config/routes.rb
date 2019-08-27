Rails.application.routes.draw do
  resources :cats, only: [:index, :show ]
  resources :people, only: [:index, :show ]
  # get 'cats/index'
  # get 'cats/show'
  # get 'people/index'
  # get 'people/show'
end
