class CreatePersonalTexts < ActiveRecord::Migration[5.0]
  def change
    create_table :personal_texts do |t|
      t.text :paragraph

      t.timestamps
    end
  end
end
