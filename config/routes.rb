Rails.application.routes.draw do
  get 'users/show_proposals'

  resources :categories
  devise_for :users
  resources :proposals
  root to: "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  match 'contatti' => 'contacts#new', via: :get
  resources :contacts, path:'contatti', only: [:new, :create]
  namespace :users do
    resources :proposals
  end

end
