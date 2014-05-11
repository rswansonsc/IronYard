Rails.application.routes.draw do
  root 'home#index'
	resources :locations do
 	resources :courses
  	resources :assignments do  
 		resources :submissions
  	resources :comments	
		end
	end
end
