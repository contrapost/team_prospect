class News < ApplicationRecord
  has_attached_file :photo, styles: {medium: '300x300>', thumb: '100x100>'}, default_url: 'https://s3.amazonaws.com/hovedprosjekt-shared/damaged.png'
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\z/
end
