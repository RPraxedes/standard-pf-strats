class Region < ApplicationRecord
  has_many :data_centers

  validates_presence_of :name
end
