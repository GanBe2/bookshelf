# frozen_string_literal: true

module Bookshelf
  module Relations
    class Reviews < Bookshelf::DB::Relation
      schema :reviews, infer: true do
        associations do
          belongs_to :book
        end
      end
    end
  end
end
