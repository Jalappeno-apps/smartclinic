Rails.application.routes.draw do
	root "dashboard#index"

  devise_for :users, path: 'admin', path_names: { 
  	sign_in: 'login',
  	sign_out: 'logout'
  }

  devise_scope :user do
  	get 'admin', to: 'devise/sessions#new'
  end

	resources :dashboard, only: :index
end
