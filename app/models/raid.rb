class Raid < ApplicationRecord
  has_many :strategies

  validates_presence_of :name
end
