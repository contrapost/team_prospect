class CreateGroupMembers < ActiveRecord::Migration[5.0]
  def change
    create_table :group_members do |t|
      t.string :first_name
      t.string :last_name
      t.text :description
      t.string :phone
      t.string :email
      t.string :link

      t.timestamps
    end
  end
end
