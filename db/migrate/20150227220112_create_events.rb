class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :company_id
      t.string :name
      t.integer :date


      t.timestamps null: false
    end
  end
end
