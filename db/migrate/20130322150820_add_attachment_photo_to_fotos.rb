class AddAttachmentPhotoToFotos < ActiveRecord::Migration
  def self.up
    change_table :fotos do |t|
      t.attachment :photo
    end
  end

  def self.down
    drop_attached_file :fotos, :photo
  end
end
