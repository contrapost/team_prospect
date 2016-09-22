class RemoveNewsTextFromNews < ActiveRecord::Migration[5.0]
  def change
    remove_column :news, :news_text, :text
  end
end
