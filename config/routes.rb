Rails.application.routes.draw do
  resources :twitters do
    collection do
      post :confirm
      get :top
    end
  end
end
