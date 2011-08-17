class Protest < ActiveRecord::Base
  validates_presence_of :title, :city, :latitude, :longitude
end
