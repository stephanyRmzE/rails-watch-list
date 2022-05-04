class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  validates :comment, length: { minimum: 6 }
  validates :movie, presence: true, uniqueness: { scope: :list}

  include PgSearch::Model
  pg_search_scope :search_by_title_and_overview,
    associated_against:{movie:  [:title]},
    using: {
      tsearch: { prefix: true }
    }
end
