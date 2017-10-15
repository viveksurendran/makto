Rails.application.routes.draw do
  devise_for :employees
  resources :blogs
  get 'carton', :to => 'static#carton'
  get 'company', :to => 'static#company'
  get 'team', :to => 'static#team'
  get 'contactUs', :to => 'static#contactus'
  get 'data-analytics', :to => 'static#analytics'
  get 'data-visualization', :to => 'static#datavisualization'
  get 'data-modeling', :to => 'static#datamodeling'
  get 'visitors/index'
  root :to => 'visitors#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
