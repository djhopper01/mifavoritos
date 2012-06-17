class CreateMedia < ActiveRecord::Migration
  def change
    create_table :media do |t|
      t.string :href
      t.string :media_type
      t.boolean :primary
      
      t.references :favorite

      t.timestamps
    end
  end
end
