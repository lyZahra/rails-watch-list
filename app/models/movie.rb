class Movie < ApplicationRecord
  # A movie has many bookmarks
  has_many :bookmarks
  # You can’t delete a movie if it is referenced in at least one bookmark.
  has_many :lists, through: :bookmarks, dependent: :destroy
  # A movie must have a unique title and an overview.
  validates :title, uniqueness: true
  validates :overview, uniqueness: true
end
