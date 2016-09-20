class AddColumnToEducations < ActiveRecord::Migration[5.0]
  def change
    add_column :educations, :group_member_id, :integer
  end
end
