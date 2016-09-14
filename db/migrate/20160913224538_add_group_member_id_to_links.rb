class AddGroupMemberIdToLinks < ActiveRecord::Migration[5.0]
  def change
    add_column :links, :group_member_id, :integer
  end
end
