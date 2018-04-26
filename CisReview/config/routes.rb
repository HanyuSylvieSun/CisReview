Rails.application.routes.draw do

  devise_for :users
  root 'courses#index'
	
  resources :courses do
  	resources :reviews, except: [:show, :index]
  end

  resources :instructors

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
