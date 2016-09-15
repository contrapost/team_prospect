class AddAttachmentPhotoToGroupMembers < ActiveRecord::Migration
  def self.up
    change_table :group_members do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :group_members, :photo
  end
end
