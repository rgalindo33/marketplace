class AddAttachmentImageToApps < ActiveRecord::Migration
  def self.up
    change_table :apps do |t|
      t.attachment :image
    end
  end

  def self.down
    drop_attached_file :apps, :image
  end
end
