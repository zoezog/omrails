Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  devise_for :users
  as :user do
  	get "signin" => 'devise/sessions#new'
  	delete "signout" => 'devise/sessions#destroy'
  	get "signup" => 'devise/registrations#new'
  end
  # get 'pages/home'
  root 'pages#home'
  get 'about' => 'pages#about'
  get 'contactus' => 'pages#contactus'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
