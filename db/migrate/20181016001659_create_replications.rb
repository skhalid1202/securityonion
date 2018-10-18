class CreateReplications < ActiveRecord::Migration[5.2]
  def change
    create_table :replications do |t|
      t.integer :last_sid, null: false
      t.datetime :timestamp, null: false

      t.timestamps
    end
  end
end
