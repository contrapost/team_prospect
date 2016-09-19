class CreateWorkExperiences < ActiveRecord::Migration[5.0]
  def change
    create_table :work_experiences do |t|
      t.date :start
      t.date :end
      t.string :company
      t.string :position
      t.text :optional_info

      t.timestamps
    end
  end
end
