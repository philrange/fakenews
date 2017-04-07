class AddCategoriesKeywords < ActiveRecord::Migration
  def self.up
    create_table :categories_keywords, :id => false do |t|
      t.integer :category_id
      t.integer :keyword_id
    end
  end

  def self.down
    drop_table :categories_keywords
  end
end
