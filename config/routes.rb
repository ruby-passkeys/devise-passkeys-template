Rails.application.routes.draw do
  default_url_options protocol: :https

  devise_for :users, controllers: {
    registrations: 'users/registrations',
  }

  devise_scope :user do
    post 'sign_up/new_challenge', to: 'users/registrations#new_challenge', as: :new_user_registration_challenge
  end

  # Defines the root path route ("/")
  root "root#index"
end
