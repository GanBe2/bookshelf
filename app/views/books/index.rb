# frozen_string_literal: true

module Bookshelf
  module Views
    module Books
      class Index < Bookshelf::View
        expose :books do
          [
            {title: '11月ハッカソン'},
            {title: 'rails が死んだ'},
            {title: 'しかし、rubyは生きているはず'}
          ]
        end
      end
    end
  end
end
