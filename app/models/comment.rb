class Comment < ApplicationRecord
    belongs_to :comments, as: :commentable
end
