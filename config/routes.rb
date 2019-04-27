Rails.application.routes.draw do
  get '/twitters', to: 'twitters#index'
end
