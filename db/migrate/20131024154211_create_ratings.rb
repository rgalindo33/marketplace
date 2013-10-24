class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :points
      t.string :comment

      t.timestamps
    end
  end
end
