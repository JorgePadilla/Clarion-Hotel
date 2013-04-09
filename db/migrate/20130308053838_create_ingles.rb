class CreateIngles < ActiveRecord::Migration
  def change
    create_table :ingles do |t|

      t.timestamps
    end
  end
end
