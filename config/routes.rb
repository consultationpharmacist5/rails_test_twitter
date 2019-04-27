Rails.application.routes.draw do
  get '/twitters', to: 'twitters#index'
  resources :blogs
end
