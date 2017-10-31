Rails.application.routes.draw do
  resources :products do
    get "delete"
  end

  resources :songs
  devise_for :installs
  devise_for :users
  root 'contacts#index'
  resources :news
  resources :contacts do
    get "delete"
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
