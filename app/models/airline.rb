class Airline < ApplicationRecord
    has_many :reviews

    before_create :slugify

    def slugify
        # Ex parameterize("Donald E. Knuth")  => "donald-e-knuth"
        self.slug = name.parameterize;
    end

    def avg_score
        # averages the score from the reviews model and rounds to 2 places and converts to floa
        reviews.average(:score).round(2).to_f
    end
end
