class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.belongs_to :user

      t.string :name
      t.text :description
      t.string :image

      t.datetime :taken_on

      t.timestamps
    end
  end
end
