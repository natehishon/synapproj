Rails.application.routes.draw do
  resources :record do
    collection { post :import }
  end
  root to: 'record#index'
  resources :people, except: [:destroy]
  resources :organizations, except: [:destroy]
  resources :address, except: [:destroy]
end