# frozen_string_literal: true

module Bookshelf
  module Actions
    module Books
      class Update < Bookshelf::Action
        include Deps["repos.book_repo"]

        params do
          required(:id).filled(:integer)
          required(:book).hash do
            required(:title).filled(:string)
            required(:author).filled(:string)
          end
        end

        def handle(request, response)
          if request.params.valid?
            book = book_repo.update(request.params[:id], request.params[:book])

            response.flash[:notice] = "Book updated successfully."
            response.redirect_to routes.path(:book, id: book[:id])
          else
            response.flash[:alert] = "Failed to update book. Please check the input."
          end
        end
      end
    end
  end
end
