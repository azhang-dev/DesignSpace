class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.text :password_digest
      t.text :studio
      t.text :location


      t.timestamps
    end
  end
end
