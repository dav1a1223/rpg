Rails.application.routes.draw do
  resources :answers
  resources :tasks
  get '/check/:id' => 'tasks#check_pwd', as: 'check_pwd'
  devise_for :users
  root to: 'visitors#index'
end
