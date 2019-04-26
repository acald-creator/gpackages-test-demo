Rails.application.routes.draw do
  get 'about', to: 'about#index'
  
  root 'index#index'
  
  resources :categories, only: [:index, :show, :search] do
    member do
      get 'search'
    end
  end
  
  resources :packages, only: [:index, :show, :search] do
    collection do
      get 'search'
      get 'suggest'
      get 'resolve'
      get 'added'
      get 'updated'
      get 'stable'
      get 'keyworded'
    end
  end
end
