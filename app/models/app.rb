class App < ActiveRecord::Base
  has_many :ratings

  has_attached_file :image, :styles => { :small => "150x150>" }
end
