class AddFechasToCorreo < ActiveRecord::Migration
  def change
    add_column :correos, :fechaingreso, :date

    add_column :correos, :fechasalida, :date

    add_column :correos, :personas, :integer

  end
end
