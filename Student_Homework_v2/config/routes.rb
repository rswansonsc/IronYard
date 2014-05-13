Rails.application.routes.draw do
  root 'home#index'
	resources :locations do
 		resources :courses
  end
  
  resources :assignments   
 	resources :submissions
  resources :comments	
	end
