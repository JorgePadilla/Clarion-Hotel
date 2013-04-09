class CreateAdvertisements < ActiveRecord::Migration
  def change
    create_table :advertisements do |t|
      t.string :descripcion

      t.timestamps
    end
  end
end
