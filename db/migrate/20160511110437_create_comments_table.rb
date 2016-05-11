class CreateCommentsTable < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :commentable
      t.string :text
      t.timestamps
    end
  end
end
