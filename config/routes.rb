AppTool::Application.routes.draw do
  
  root to: 'sessions#new'
  delete "logout" => 'sessions#destroy', :as => :logout
  
  resources :sessions

  resources :users

  resources :apps

  
end
