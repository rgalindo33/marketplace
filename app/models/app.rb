class App < ActiveRecord::Base
  has_many :ratings
  has_many :downloads
  has_many :users, :through => :downloads

  has_attached_file :image, :styles => { :small => "150x150>" }

  def rating
    ratings.average("value").to_f
  end

  def downloaded? user
    self.in?(user.apps)
  end
end
