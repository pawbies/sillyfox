Rails.application.routes.draw do
  resources :ingredients
  resources :users do
    resources :favorites, only: %i[ create destroy ]
  end

  resource :session
  resources :passwords, param: :token

  get "up" => "rails/health#show", as: :rails_health_check

  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  root "home#index"

  get "about" => "static_pages#about"
  get "imprint" => "static_pages#imprint"
  get "contact" => "static_pages#contact"
end
