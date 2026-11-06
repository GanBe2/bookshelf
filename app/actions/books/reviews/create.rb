# frozen_string_literal: true

module Bookshelf
  module Actions
    module Books
      module Reviews
        class Create < Bookshelf::Action
          include Deps["repos.review_repo"]

          params do
            required(:book_id).filled(:integer)
            required(:review).hash do
              required(:content).filled(:string, max_size?: 255)
            end
          end

          def handle(request, response)
            book_id = request.params[:book_id]

            if request.params.valid?
              review_repo.create(request.params[:review].merge(book_id: book_id))
              response.flash[:notice] = "Review created successfully."
            else
              response.flash[:alert] = "Failed to create review. Please check the input."
            end

            response.redirect_to routes.path(:book, id: book_id)
          end
        end
      end
    end
  end
end
