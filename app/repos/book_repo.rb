# frozen_string_literal: true

module Bookshelf
  module Repos
    class BookRepo < Bookshelf::DB::Repo
      def all_by_title
        books.order(books[:title].asc).to_a
      end

      def get(id)
        books.by_pk(id).one!
      end
    end
  end
end
