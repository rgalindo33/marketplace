class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :value
      t.string :commenter
      t.text :comment
      t.belongs_to :app

      t.timestamps
    end
  end
end
