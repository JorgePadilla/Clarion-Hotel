class AddEmail2ColumnToCorreo < ActiveRecord::Migration
  def change
    add_column :correos, :email2, :string

  end
end
