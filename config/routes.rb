Rails.application.routes.draw do
  devise_for :admins
  root :to => 'visitors#index'
  resources :blogs
  resources :static
  post '/contactus' => 'static#contactus'
  get 'carton', :to => 'static#carton'
  get 'company', :to => 'static#company'
  get 'team', :to => 'static#team'
  get 'contactus', :to => 'static#contactus'
  get 'enterprise', :to => 'static#enterprise'
  get 'business', :to => 'static#business'
  get 'data-analytics', :to => 'static#analytics'
  get 'visitors/index'
    authenticate :admin do
   devise_scope :admin do
       get 'admin-dashboard', to: 'admins/registrations#home', :as => :admin_root
   end
end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
