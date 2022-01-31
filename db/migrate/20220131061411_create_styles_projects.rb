class CreateStylesProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :styles_projects do |t|
      t.integer :style_id
      t.integer :project_id
    end
  end
end
