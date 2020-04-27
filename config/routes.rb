# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get :films, to: "films#index"
      get :movies, to: "movies#index"
      get :seasons, to: "seasons#index"
    end
  end
end
