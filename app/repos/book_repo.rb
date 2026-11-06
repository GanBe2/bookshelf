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

      def create(attributes)
        books.changeset(:create, attributes).commit
      end

      def update(id, attributes)
        books.by_pk(id).changeset(:update, attributes).commit
      end

      def delete(id)
        books.by_pk(id).cjhangeset(:delete).commit
      end
    end
  end
end
