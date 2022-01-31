class CreateProjectsStyles < ActiveRecord::Migration[5.2]
  def change
    create_table :projects_styles do |t|
      t.integer :style_id
      t.integer :project_id
    end
  end
end
