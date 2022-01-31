class CreateLibrariesProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :libraries_projects do |t|
      t.integer :project_id
      t.integer :library_id
    end
  end
end
