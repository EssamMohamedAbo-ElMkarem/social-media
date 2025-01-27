class Reaction < ApplicationRecord
  belongs_to :user
  belongs_to :post

  validates :name, presence: true
  validates :user_id, uniqueness: { scope: [ :post_id, :name ], message: "can only react once with the same type to a post" }
end
