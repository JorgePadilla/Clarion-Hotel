class CreateEnglishes < ActiveRecord::Migration
  def change
    create_table :englishes do |t|

      t.timestamps
    end
  end
end
