class RemoveNewsIdFromLinks < ActiveRecord::Migration[5.0]
  def change
    remove_column :links, :news_id, :integer
  end
end
