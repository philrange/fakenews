class AddKeywordRefToWebsites < ActiveRecord::Migration
  def change
    add_reference :websites, :keyword, index: true, foreign_key: true
  end
end
