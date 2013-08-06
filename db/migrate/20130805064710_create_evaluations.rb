class CreateEvaluations < ActiveRecord::Migration
  def change
    create_table :evaluations do |t|
      t.date :interview_time
      t.string :interviewer
      t.string :subject
      t.string :comm_skill
      t.string :tech_skill
      t.text :passion
      t.string :potential
      t.string :fit
      t.integer :employee_id

      t.timestamps
    end
    add_index :evaluations, :employee_id
  end
end
