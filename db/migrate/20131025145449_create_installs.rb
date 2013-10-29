class CreateInstalls < ActiveRecord::Migration
  def change
    create_table :installs do |t|
      t.belongs_to :app, index: true
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
