class Job < ApplicationRecord
  validates :title, :description, presence: true
  validates :title, uniqueness: true
  validates :salary, numericality: { greater_than_or_equal_to: 0.00 }
  validates :company_logo_url, allow_blank: true, format: {
    with: %r{\.(gif|jpg|png)\z}i,
    message: 'must be a url for GIF, JPG, or PNG image.'
  }
end
