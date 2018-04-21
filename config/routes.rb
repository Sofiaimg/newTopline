Rails.application.routes.draw do
  resources :orders
  resources :products
  resources :variants
  resources :quotations do
    resources :quotation_details
  end
  resources :brands
  resources :payment_terms
  resources :seasons
  resources :ports
  resources :categories
  resources :colors
  resources :sizes
  resources :clients
  resources :seller_accounts
  resources :sellers
  resources :supplier_accounts
  resources :handlers
  resources :suppliers
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'pages/index'
  root 'pages#index'

  devise_for :users, controllers: {
		sessions: 'users/sessions',
    registrations: 'users/sessions',

	}
end
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
