class AddColumnToSkills < ActiveRecord::Migration[5.0]
  def change
    add_column :skills, :group_member_id, :integer
  end
end
