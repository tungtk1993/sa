class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :address
      t.string :website
      t.string :phone
      t.text :agency
      t.text :size

      t.timestamps
    end
  end
end
