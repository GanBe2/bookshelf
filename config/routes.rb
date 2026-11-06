# frozen_string_literal: true

module Bookshelf
  class Routes < Hanami::Routes
    root to: "home.index"
    resources :books, only: %i[index show new create edit update]
  end
end
