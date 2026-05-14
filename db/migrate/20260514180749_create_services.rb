class CreateServices < ActiveRecord::Migration[8.0]
  def change
    create_table :services do |t|
      t.string :name
      t.text :description
      t.string :category
      t.decimal :base_price
      t.integer :duration_minutes
      t.references :user, null: false, foreign_key: true
      t.string :slug

      t.timestamps
    end
  end
end
