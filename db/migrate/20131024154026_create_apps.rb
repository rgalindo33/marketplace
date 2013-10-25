class CreateApps < ActiveRecord::Migration
  def change
    create_table :apps do |t|
      t.string :name
      t.string :description
      t.string :publisher
      t.string :version
      t.string :size
      t.string :price

      t.timestamps
    end
  end
end
