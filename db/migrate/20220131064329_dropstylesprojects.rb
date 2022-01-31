class Dropstylesprojects < ActiveRecord::Migration[5.2]
  def change
    drop_table :styles_projects 
  end
end
