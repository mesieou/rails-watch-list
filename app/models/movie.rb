class Movie < ApplicationRecord
  has_many :bookmarks
  validates :title, uniqueness: true, presence: true
  validates :overview, uniqueness: true, presence: true
  has_one_attached :photo
end
