class AddColumnToGroupMembers < ActiveRecord::Migration[5.0]
  def change
    add_column :group_members, :field_of_study_in_westerdal_id, :integer
  end
end
