Rails.application.routes.draw do
  root 'home#index'
	resources :locations
 	resources :courses
  resources :assignments   
 	resources :submissions
  resources :comments	
	end
