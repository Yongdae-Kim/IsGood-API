Rails.application.routes.draw do
  resources :messages
  resources :member_works
  resources :member_stats
  resources :member_elements
  resources :reviews
  resources :members
  resources :common_codes

  namespace :api do
    resources :regions, only: :index
    resources :parties, only: :index
    resources :avatars, only: :create
    resources :members, only: [:index, :show] do
      resources :reviews, only: [:index, :create] do
        resources :messages, only: [:index, :create]
      end
    end
    get 'members_autocomplete', to: 'members#autocomplete'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'
end
