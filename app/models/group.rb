class Group < ApplicationRecord
  belongs_to :user
  has_many :posts
  validates :title, presence: true

  has_many :grouo_relationships
  has_many :menbers, throuhg: :group_relationships, source: :user
end
