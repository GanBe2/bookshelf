# frozen_string_literal: true

module Bookshelf
  module Views
    module Books
      class Edit < Bookshelf::View
        include Deps["repos.book_repo"]

        expose :book do |id:|
          book_repo.get(id)
        end
      end
    end
  end
end
