class CreateEducations < ActiveRecord::Migration[5.0]
  def change
    create_table :educations do |t|
      t.date :start
      t.date :end
      t.string :institution_name
      t.string :field_of_study

      t.timestamps
    end
  end
end
