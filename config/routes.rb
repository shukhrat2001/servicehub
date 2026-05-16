Rails.application.routes.draw do
  # =========================
  # AUTH (Devise)
  # =========================
  devise_for :users

  # =========================
  # HEALTH CHECK
  # =========================
  get "up" => "rails/health#show", as: :rails_health_check

  # =========================
  # ROOT
  # =========================
  root "pages#home"


  ## Dashboard"

  namespace :dashboard do
    get "messages/index"
    get "messages/show"
    get "bookings/index"
    get "bookings/show"
    get "home/index"
  root 'dashboard/home#index'
  resources :bookings, only: [:index, :show]
  resources :messages, only: [:index, :show]
end

  # =========================
  # STATIC PAGES
  # =========================
  get "browse", to: "pages#browse"
  get "dashboard", to: "pages#dashboard"

  # =========================
  # MARKETPLACE CORE
  # =========================
  resources :services do
    resources :bookings, only: [:create]

    resources :messages, only: [:new, :create]

    # optional UX shortcuts (so buttons can work easily)
    post "book", to: "bookings#create"
    get  "message", to: "messages#new"
  end
end