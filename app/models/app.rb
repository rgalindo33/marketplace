class App < ActiveRecord::Base
  has_many :ratings
  has_many :installs
  has_many :users, :through => :installs

  has_attached_file :image, :styles => { :small => "150x150>" }

  
  # 
  # Calculate the average rating for the app, with 2 decimals
  # 
  def rating
    ratings.average("value").to_f.round(2)
  end
  # 
  # check if the user has the app installed
  # @param  user  refers to the user to check
  # 
  # @return boolean
  def installed? user
    self.in?(user.apps)
  end

  # 
  # search method
  # @param  text to be searched
  # 
  # @return array of apps, if it finds none returns all
  def self.search text
    if text
      where('name LIKE LOWER(?)', "%#{text.downcase}%").to_a
    else
      find :all
    end
  end
end
