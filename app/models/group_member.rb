class GroupMember < ApplicationRecord
  has_many :links, dependent: :destroy
  has_many :work_experiences, dependent: :destroy
  has_many :skills, dependent: :destroy
  has_many :educations, dependent: :destroy

  has_one :bio, dependent: :destroy
  has_one :field_of_study_in_westerdal, dependent: :destroy
  has_one :personal_text, dependent: :destroy

  has_attached_file :photo, styles: {medium: '300x300>', thumb: '100x100>'}, default_url: 'https://s3.amazonaws.com/hovedprosjekt-shared/damaged.png'
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\z/
end
