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