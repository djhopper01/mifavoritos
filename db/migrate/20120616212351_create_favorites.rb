class CreateFavorites < ActiveRecord::Migration
  def change
    create_table :favorites do |t|
      t.string :title
      t.string :author
      t.text :text
      
      t.references :user

      t.timestamps
    end
  end
end
