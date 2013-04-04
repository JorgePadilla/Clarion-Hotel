class CreateCorreos < ActiveRecord::Migration
  def change
    create_table :correos do |t|
      t.string :nombre
      t.string :direccion
      t.string :cuidad
      t.string :estado
      t.string :zip
      t.string :identidad
      t.string :procedencia
      t.string :compania
      t.string :telefono
      t.string :email

      t.timestamps
    end
  end
end
