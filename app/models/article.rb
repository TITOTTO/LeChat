class Article < ApplicationRecord
    belongs_to :user
    has_many :comments, as: :commentable
    has_many :join_table_items_carts, dependent: :nullify
end
