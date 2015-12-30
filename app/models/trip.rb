class Trip < ActiveRecord::Base
  has_many :stops
  validates :name, presence: true
  validates :description, presence: true
end
