Rails.application.routes.draw do
  devise_for :users, controllers: {registrations: :registrations,
                                   sessions: :sessions}

  get 'landing_page/index'
  root 'landing_page#index'
end
