class List < ApplicationRecord
  # A list has many bookmarks
  has_many :bookmarks
  # A list has many movies through bookmarks
  has_many :movies, through: :bookmarks, dependent: :destroy
  # When you delete a list, you should delete all associated bookmarks (but not the movies as they can be referenced in other lists).
  # A list must have a unique name.
  validates :name, uniqueness: true
end
