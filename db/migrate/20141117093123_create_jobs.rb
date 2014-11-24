class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :name
      t.text :description
      t.text :requirement
      t.string :job_type
      t.string :location
      t.datetime :date_start
      t.datetime :expires
      t.string :job_level
      t.integer :number_recruits
      t.string :salary
      t.integer :experience
      t.string :require_age
      t.string :diploma
      t.string :preferred_language
      t.integer :company_id
      t.integer :category_id
      t.timestamps
    end
  end
  def down
    remove_table :jobs
  end
end
