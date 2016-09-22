class AddNewsIdToNewsParagraph < ActiveRecord::Migration[5.0]
  def change
    add_column :news_paragraphs, :news_id, :integer
  end
end
