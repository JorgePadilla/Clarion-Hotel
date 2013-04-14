class RemoveEmailFromCorreo < ActiveRecord::Migration
  def up
    remove_column :correos, :email
        remove_column :correos, :email2
        remove_column :correos, :direccion
        remove_column :correos, :estado
        remove_column :correos, :zip
      end

  def down
    add_column :correos, :zip, :string
    add_column :correos, :estado, :string
    add_column :correos, :direccion, :string
    add_column :correos, :email2, :string
    add_column :correos, :email, :string
  end
end
