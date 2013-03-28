class Foto < ActiveRecord::Base

has_attached_file :photo
validates :photo, attachment_presence: true, presence: true

end
