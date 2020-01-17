Rails.application.routes.draw do
  root "homepage#index"

  devise_for :users, path: 'admin', path_names: { 
  	sign_in: 'login',
  	sign_out: 'logout'
  }

  devise_scope :user do
  	get 'admin', to: 'devise/sessions#new'
  end

  resources :dashboard, only: :index
  resources :doctors, only: [:index, :show]

  namespace :dashboard do
    resources :doctors, only: [:index, :create, :show]
    resources :blogs, only: :index
  end

  get 'blog/:blog_name_slug', to: 'blogs#show'
end
