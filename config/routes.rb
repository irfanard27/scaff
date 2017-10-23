Rails.application.routes.draw do
  devise_for :installs
  devise_for :users
  root 'contacts#index'
  resources :news
  resources :contacts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
