Rails.application.routes.draw do
  resources :plans do 
      resources :tasks
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  devise_for :users

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy' 
  end

  # Defines the root path route ("/")
  root 'plans#index'
end
