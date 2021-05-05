class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :description
      t.string :project_creator
      t.string :project_assignee
      t.string :project_status

      t.timestamps
    end
  end
end
