Rails.application.routes.draw do
  resources :users
  resources :questions
  resources :tags
  resources :categories
  get '/questions/:question_id/user', to: 'users#show'

end
