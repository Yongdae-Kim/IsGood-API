Rails.application.routes.draw do
  resources :common_codes

  namespace :api do
    resources :regions, only: :index
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'
end
