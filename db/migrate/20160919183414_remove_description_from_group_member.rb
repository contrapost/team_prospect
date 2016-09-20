class RemoveDescriptionFromGroupMember < ActiveRecord::Migration[5.0]
  def change
    remove_column :group_members, :description, :text
  end
end
