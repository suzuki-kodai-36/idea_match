Rails.application.routes.draw do
  root to: 'ideas#new'
  resources :ideas, only: %i[new create]
  resources :word_ideas, only: %i[index create]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
