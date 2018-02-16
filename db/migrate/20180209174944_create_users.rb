class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.integer :numeroesterno
      t.string :tipoesterno
      t.string :name
      t.string :email
      t.string :password

      t.timestamps
    end
  end
end
