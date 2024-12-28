class CreatePhotos < ActiveRecord::Migration[7.0]
  def change
    create_table :photos do |t|
      t.string      :image,        null: false
      t.text        :description
      t.references  :album,        null: false, foreign_key: true
      t.timestamps  :user,         null: false, foreign_key: true
    end
  end
end
