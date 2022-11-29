class Cart < ApplicationRecord
  belongs_to :user
  has_many :cartfulls
  has_many :articles, through: :cartfulls
end
