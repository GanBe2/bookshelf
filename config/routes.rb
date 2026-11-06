# frozen_string_literal: true

module Bookshelf
  class Routes < Hanami::Routes
    root to: "home.index"
    resources :books, only: [:index]
  end
end
