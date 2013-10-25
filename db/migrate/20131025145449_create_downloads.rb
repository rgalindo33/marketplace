class CreateDownloads < ActiveRecord::Migration
  def change
    create_table :downloads do |t|
      t.belongs_to :app, index: true
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
