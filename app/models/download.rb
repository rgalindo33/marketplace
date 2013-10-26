class Download < ActiveRecord::Base
  belongs_to :app
  belongs_to :user
  validates :user_id, :uniqueness => { :scope => :app_id }
end
