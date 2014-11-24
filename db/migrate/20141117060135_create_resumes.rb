class CreateResumes < ActiveRecord::Migration
  def change
    create_table :resumes do |t|
      t.integer :user_id
      t.integer :job_id
      t.text   :cover_letter
      t.has_attached_file :cv
      t.timestamps
    end
  end

  def down
    remove_table :resumes
  end
end
