# frozen_string_literal: true

ROM::SQL.migration do
  change do
    create_table :reviews do
      primary_key :id
      foreign_key :book_id, :books, on_delete: :cascade, null: false
      column :content, String, null: false
    end
  end
end
