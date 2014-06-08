Rails.application.routes.draw do
  resources :posts, only: [:index, :show, :new, :create]

  root to: "posts#index"
end
