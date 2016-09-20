class AddColumnsToGroupMember < ActiveRecord::Migration[5.0]
  def change
    add_column :group_members, :field_of_study_id, :integer
    add_column :group_members, :bio_id, :integer
    add_column :group_members, :work_experience_id, :integer
    add_column :group_members, :education_id, :integer
    add_column :group_members, :skill_id, :integer
    add_column :group_members, :personal_text_id, :integer
  end
end
