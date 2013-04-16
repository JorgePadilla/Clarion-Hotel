class Advertisement < ActiveRecord::Base
has_attached_file :photo,
 :path => ":rails_root/public/attachments/:project_id/ressources/:id_:basename_:style.:extension",
  :url  => "/attachments/:project_id/ressources/:id_:basename_:style.:extension",
:styles => { :large => "960x503!", :medium => "300x300>", :thumb => "100x100>"}

  
end
