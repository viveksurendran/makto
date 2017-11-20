Rails.application.routes.draw do
  resources :jobs
  devise_for :admins
  root :to => 'visitors#index'
  resources :blogs
  post 'contactus', to: 'static#create'
  post 'enterprise', to: 'static#enterprisecreate'
  post 'business', to: 'static#businesscreate'
  post 'careers', to: 'static#careercreate'
  post 'carton', to: 'static#cartoncreate'
  resources :static
  get 'carton', :to => 'static#carton'
  get 'company', :to => 'static#company'
  get 'team', :to => 'static#team'
  get 'contactus', :to => 'static#contactus'
  get 'enterprise', :to => 'static#enterprise'
  get 'business', :to => 'static#business'
  get 'careers', :to => 'static#careers'
  get 'data-analytics', :to => 'static#analytics'
  get 'home', :to => 'visitors#index'
    authenticate :admin do
   devise_scope :admin do
       get 'admin-dashboard', to: 'admins/registrations#home', :as => :admin_root
   end
end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
