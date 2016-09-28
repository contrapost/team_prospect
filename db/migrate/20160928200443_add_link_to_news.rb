class AddLinkToNews < ActiveRecord::Migration[5.0]
  def change
    add_column :news, :link, :string
  end
end
