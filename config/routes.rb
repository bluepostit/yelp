Rails.application.routes.draw do
  resources :restaurants do
    resources :reviews, only: [:new, :create]

    # Nested route: on collection
    collection do
      get 'top'
    end

    # Nested route: on member
    member do
      get 'chef'
    end
  end

  # Namespaced route: GET /admin/restaurants
  namespace :admin do
    resources :restaurants, only: [:index]
  end
end
