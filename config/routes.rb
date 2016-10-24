Rails.application.routes.draw do
	resources :posts
  	resources :comments
  	devise_for :users, controllers: { sessions: 'sessions', registrations: 'registrations' }
  
 	 # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
