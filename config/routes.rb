Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :reqs
  resources :candidates do
      resources :chatrooms do
        resources :messages, only: :create
      end
    member do
       get 'map', to: "candidates#map"
       get 'profile', to: "candidates#profile"
       get 'tchat', to: "candidates#tchat"
      end
    member do
      post 'discover', to: "candidates#discover"
      post 'select', to: "candidates#select"
      post 'save', to: "candidates#save"
      post 'archive', to: "candidates#archive"
    end
  end
end

