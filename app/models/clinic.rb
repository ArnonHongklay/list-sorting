class Clinic < ApplicationRecord
  scope :feature, -> { where(flag: ['recommended', 'promotion']).limit(2) }
  scope :most_rating, -> { where.not(id: feature.select(:id)).order(rating: :desc).limit(3) }

  scope :not_combined, -> { where.not(id: feature + most_rating).order(created_at: :desc) }

  scope :combined, -> { feature + most_rating + not_combined }
end
