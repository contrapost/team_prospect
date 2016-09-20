class CreateFieldOfStudyInWesterdals < ActiveRecord::Migration[5.0]
  def change
    create_table :field_of_study_in_westerdals do |t|
      t.string :name
      t.text :description
      t.string :link

      t.timestamps
    end
  end
end
