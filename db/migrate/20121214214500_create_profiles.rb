class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :standard
      t.string :section
      t.string :rollno
      t.string :subject

      t.timestamps
    end
  end
end
