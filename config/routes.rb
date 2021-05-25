Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :reqs
  resources :candidates do
    member do
       get 'map', to: "candidates#map"
       get 'profile', to: "candidates#profile"
       get 'tchat', to: "candidates#tchat" do
        resources :message, only: :create
      end
    end
  end
end
