Rails.application.routes.draw do
  root 'home#index'
	resources :locations do
 		resources :courses
  	resources :assignments
  end
  
  resources :submissions
  resources :comments
end
