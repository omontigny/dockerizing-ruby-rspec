Rails.application.routes.draw do
  resources :posts do
    #/posts/1/comment
    resources :comments, only: [:create]
  end
  root 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :books, only: [:index]

end
