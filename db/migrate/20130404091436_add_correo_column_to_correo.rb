class AddCorreoColumnToCorreo < ActiveRecord::Migration
  def change
    add_column :correos, :correo, :string

  end
end
