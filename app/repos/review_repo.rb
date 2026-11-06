# frozen_string_literal: true

module Bookshelf
  module Repos
    class ReviewRepo < Bookshelf::DB::Repo
      def create(attributes)
        reviews.changeset(:create, attributes).commit
      end
    end
  end
end
