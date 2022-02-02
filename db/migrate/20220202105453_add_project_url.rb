class AddProjectUrl < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :project_url, :text

  end
end
