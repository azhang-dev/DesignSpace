class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.text :title
      t.text :location
      t.text :description
      t.text :image_url
      t.integer :user_id

      t.timestamps
    end
  end
end
