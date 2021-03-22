class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.date :date
      t.text :text
      t.integer :category_id
      t.integer :rank_id
      t.integer :status_id

      t.timestamps
    end
  end
end
