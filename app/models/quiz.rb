class Quiz < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged

  belongs_to :user
  has_many :questions, dependent: :destroy
  has_many :results

  accepts_nested_attributes_for :questions, allow_destroy: true

  validates :title, presence: true
  validates :description, presence: true
end
