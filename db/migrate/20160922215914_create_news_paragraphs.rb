class CreateNewsParagraphs < ActiveRecord::Migration[5.0]
  def change
    create_table :news_paragraphs do |t|
      t.text :paragraph

      t.timestamps
    end
  end
end
