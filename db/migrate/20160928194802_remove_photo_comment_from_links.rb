class RemovePhotoCommentFromLinks < ActiveRecord::Migration[5.0]
  def change
    remove_column :links, :photo_comment, :string
  end
end
