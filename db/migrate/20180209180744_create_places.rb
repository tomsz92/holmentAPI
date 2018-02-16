class CreatePlaces < ActiveRecord::Migration[5.1]
  def change
    create_table :places do |t|
      t.string :name
      t.string :description
      t.string :age
      t.string :address
      t.integer :user_id
      t.string :puntatore
      t.float :longitude
      t.float :latitude

      t.timestamps
    end
  end
end
