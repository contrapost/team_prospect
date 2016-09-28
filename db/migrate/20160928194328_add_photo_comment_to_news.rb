class AddPhotoCommentToNews < ActiveRecord::Migration[5.0]
  def change
    add_column :news, :photo_comment, :string
  end
end
