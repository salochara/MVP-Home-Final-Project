Rails.application.routes.draw do
  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  devise_scope :user do
    root to: "devise/sessions#new"
  end

  resources :users, only: [:edit, :update, :show] do
    member do
      post "/matching", to: "users#matching"
      get '/location', to: "users#set_user_location"
      post '/location/set', to: "users#post_locate"
    end
  end

  # routes for user registration
  get 'registration/welcome', to: 'registration#welcome_page'
  get 'registration/cuisines', to: 'registration#cuisines_show'
  post 'registration/cuisines/edit', to: 'registration#cuisines_edit'
  get 'registration/interests', to: 'registration#interests_show'
  post 'registration/interests/edit', to: 'registration#interests_edit'
  get 'registration/bio', to: 'registration#bio_show'
  post 'registration/bio/edit', to: 'registration#bio_edit'
  get 'registration/completed', to: 'registration#registration_completed'

  resources :recipes, only: [:index, :show, :new, :create]
  post 'chat_rooms/:chat_room_id/messages', to: 'messages#create', as: :chat_room_messages
  get 'chat_rooms/:id', to: 'chat_rooms#show', as: :chat_room
  get 'chat_rooms', to: 'chat_rooms#index'

  mount ActionCable.server => "/cable"

  match 'users/:id' => 'users#destroy', :via => :delete, :as => :destroy_user


end
