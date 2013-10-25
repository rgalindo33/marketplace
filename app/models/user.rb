class User < ActiveRecord::Base
  has_many :downloads
  has_many :apps, :through => :downloads

end
