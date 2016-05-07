class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username, null:false, unique:true
      t.string :hashword, null:false

      t.timestamps null:false
    end
  end
end
