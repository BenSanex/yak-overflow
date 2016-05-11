class CreateCommentsTable < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :commentable, polymorphic: true
      t.string :text
      t.integer :commenter_id

      t.timestamps
    end
  end
end
