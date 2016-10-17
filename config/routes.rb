Rails.application.routes.draw do
  devise_for :users
  namespace :api, path: '/', constraints: { subdomain: 'api' } do
    resources :users
    
  end

  constraints subdomain: ['', 'www'] do
    resources :users do 
      resources :phones
    end
    root 'users#index'
  end
end
