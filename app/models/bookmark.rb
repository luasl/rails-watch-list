class Bookmark < ApplicationRecord
  validates :movie_id, uniqueness: { scope: :list_id, case_sensitive: false }
  validates :comment, presence: true, length: { minimum: 6 }
  validates :movie, presence: true
  validates :list, presence: true
  belongs_to :movie
  belongs_to :list
end
