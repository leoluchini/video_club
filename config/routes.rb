# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get :films, to: "films#index"
      get :movies, to: "movies#index"
      get :seasons, to: "seasons#index"

      resources :users do
        resources :purchase, only: [:create]
        resources :libraries, only: [:index]
      end
    end
  end
end
