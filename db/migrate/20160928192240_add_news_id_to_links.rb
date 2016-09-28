class AddNewsIdToLinks < ActiveRecord::Migration[5.0]
  def change
    add_column :links, :news_id, :integer
  end
end
