Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "posts#index"

  # root to: "pages#home"

  root to: "lists#index"

  resources :lists do
    resources :bookmarks, only: %i[new create show destroy]
  end
end
