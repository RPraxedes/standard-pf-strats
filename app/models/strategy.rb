class Strategy < ApplicationRecord
  belongs_to :raid
  belongs_to :data_center

  validates_presence_of :name
end
