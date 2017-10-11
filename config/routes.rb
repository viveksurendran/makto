Rails.application.routes.draw do
  resources :blogs
  get 'carton', :to => 'static#carton'
  get 'company', :to => 'static#company'
  get 'visitors/index'
  root :to => 'visitors#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end