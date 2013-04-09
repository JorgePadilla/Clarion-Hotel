class AddAttachmentPhotoToAdvertisements < ActiveRecord::Migration
  def self.up
    change_table :advertisements do |t|
      t.attachment :photo
    end
  end

  def self.down
    drop_attached_file :advertisements, :photo
  end
end
