class RemoveLinkFromGroupMember < ActiveRecord::Migration[5.0]
  def change
    remove_column :group_members, :link, :string
  end
end
