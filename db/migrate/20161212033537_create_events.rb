class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.references :user, foreign_key: true
      t.datetime :start_time
      t.datetime :finish_time
      t.integer :age_min
      t.integer :age_max
      t.string :gender
      t.string :where
      t.text :details
      t.string :title
      t.integer :group_max
      t.integer :group_min
      t.string :language
      t.text :link

      t.timestamps
    end
  end
end
