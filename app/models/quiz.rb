class Quiz < ApplicationRecord
  belongs_to :user
  has_many :questions
  has_many :results

  validates :title, presence: true
  validates :description, presence: true
end
