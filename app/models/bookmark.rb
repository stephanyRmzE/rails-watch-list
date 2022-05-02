class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  validates :comment, length: { minimum: 6 }
  validates :movie, presence: true, uniqueness: { scope: :list}

    def movie_title
      movie.try(:title)
    end

    def movie_title=(title)
      self.user = Movie.find_by_title(title) if title.present?
    end
end
