class User < ActiveRecord::Base
  has_many :installs
  has_many :apps, :through => :installs

end
