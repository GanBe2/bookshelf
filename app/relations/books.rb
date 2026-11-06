# frozen_string_literal: true

module Bookshelf
  module Relations
    class Books < Bookshelf::DB::Relation
      schema :books, infer: true do
        associations do
          has_many :reviews
        end
      end
    end
  end
end
