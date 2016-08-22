Rails.application.routes.draw do
  devise_for :users, controllers: {registrations: :registrations,
                                   sessions: :sessions}

  get 'restaurant_create/restaurant_create', to: 'restaurant_create#restaurant_create', as: 'restaurant_create'

  get 'landing_page/index'
  root 'landing_page#index'
end
