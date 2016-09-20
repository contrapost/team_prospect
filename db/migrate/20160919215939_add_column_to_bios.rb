class AddColumnToBios < ActiveRecord::Migration[5.0]
  def change
    add_column :bios, :group_member_id, :integer
  end
end
