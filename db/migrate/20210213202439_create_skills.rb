class CreateSkills < ActiveRecord::Migration[6.0]
  def change
    create_table :skills do |t|
      t.string :name, null: false
      t.string :classification, null: false
      t.text :content, null: false
      t.string :certification

      t.timestamps
    end
  end
end
