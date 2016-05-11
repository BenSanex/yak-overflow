class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.references :votable, :polymorphic => true
      t.integer  :voter_id
      t.string :direction

      t.timestamps
    end
  end
end
