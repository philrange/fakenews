class AddSynonymToKeywords < ActiveRecord::Migration
  def change
    add_column :keywords, :synonym, :string
  end
end
