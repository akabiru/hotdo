Rails.application.routes.draw do
  root 'tasks#index'

  resources :tasks do
    post :toggle, on: :member, defaults: { format: :json }
  end
end
