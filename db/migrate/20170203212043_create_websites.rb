class CreateWebsites < ActiveRecord::Migration
  def change
    create_table :websites do |t|
      t.string :title
      t.string :description
      t.integer :picture_id
      t.string :text

      t.timestamps null: false
    end
  end
end
