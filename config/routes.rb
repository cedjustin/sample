Rails.application.routes.draw do
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "tasks#index"
  resources :tasks do 
    collection do
      post :confirm
    end
  end

  resources :posts
end
