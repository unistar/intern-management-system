class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name
      t.string :email
      t.string :univ
      t.string :degree
      t.date :grad_time
      t.integer :cell, :limit => 8

      t.timestamps
    end
  end
end
