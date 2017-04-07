class CreateJoinTable < ActiveRecord::Migration
  def change
    create_join_table :keywords, :pictures do |t|
      # t.index [:keyword_id, :picture_id]
      # t.index [:picture_id, :keyword_id]
    end
  end
end
