class DataCenter < ApplicationRecord
  belongs_to :region

  validates_presence_of :name
end
