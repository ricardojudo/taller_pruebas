class Person < ActiveRecord::Base
  validates :name, presence: true
  validates :height, numericality: true
end
