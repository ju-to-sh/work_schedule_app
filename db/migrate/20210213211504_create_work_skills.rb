class CreateWorkSkills < ActiveRecord::Migration[6.0]
  def change
    create_table :work_skills do |t|
      t.references :work, null: false, foreign_key: true
      t.references :skill, null: false, foreign_key: true

      t.timestamps
    end

    add_index :work_skills, [:work_id, :skill_id], unique: true

  end
end
