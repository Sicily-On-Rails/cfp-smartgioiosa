Rails.application.routes.draw do
  get 'faqs/index'

  #get 'alerts/index'

  namespace :admin do
    get 'application/index'
  end

  get 'users/show_proposals'

  resources :categories
  devise_for :users
  resources :proposals
  root to: "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  match 'contatti' => 'contacts#new', via: :get
  resources :contacts, path:'contatti', only: [:new, :create]
  resources :alerts, only: [:index]
  namespace :users do
    resources :proposals
  end

end
