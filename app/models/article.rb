class Article < ApplicationRecord
    belongs_to :user
    has_many :comments, as: :commentable
    has_many :cartfulls
    has_many :carts, through: :cartfulls
end
