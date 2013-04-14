class AddTipoToCorreo < ActiveRecord::Migration
  def change
    add_column :correos, :tipo, :string

  end
end
