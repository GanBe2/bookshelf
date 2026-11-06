# frozen_string_literal: true

module Bookshelf
  class Routes < Hanami::Routes
    root to: "home.index"
    resources :books do
      resources :reviews, only: %i[create]
    end
  end
end
