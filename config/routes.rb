AppTool::Application.routes.draw do
  
  root to: 'sessions#new'
  resources :sessions

  resources :users

  resources :apps

  
end
