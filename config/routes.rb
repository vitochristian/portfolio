Rails.application.routes.draw do
  resources :portfolios, except: [:show]
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'

  root to: 'pages#home'
  
  get 'about-us', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  
  resources :blogs do
  	member do
  		get :toggle_stats
  	end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
