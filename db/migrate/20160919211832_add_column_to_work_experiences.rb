class AddColumnToWorkExperiences < ActiveRecord::Migration[5.0]
  def change
    add_column :work_experiences, :group_member_id, :integer
  end
end
