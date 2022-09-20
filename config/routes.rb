Rails.application.routes.draw do
<<<<<<< HEAD
  resources :user_books
  resources :users
  root 'user_books#index'


  resources :books do
    member do
      get :delete
    end
  end
=======
  resources :books
  root 'books#index'

>>>>>>> 7915054120f3175495aeb6ecf9abe44053a318ac
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
