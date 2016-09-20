class RemoveColumnsToGroupMember < ActiveRecord::Migration[5.0]
  def change
    remove_column :group_members, :field_of_study_id, :integer
    remove_column :group_members, :bio_id, :integer
    remove_column :group_members, :work_experience_id, :integer
    remove_column :group_members, :education_id, :integer
    remove_column :group_members, :skill_id, :integer
    remove_column :group_members, :personal_text_id, :integer
  end
end
