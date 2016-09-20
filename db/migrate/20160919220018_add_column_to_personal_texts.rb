class AddColumnToPersonalTexts < ActiveRecord::Migration[5.0]
  def change
    add_column :personal_texts, :group_member_id, :integer
  end
end
