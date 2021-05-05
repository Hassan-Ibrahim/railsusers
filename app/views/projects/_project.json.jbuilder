json.extract! project, :id, :title, :description, :project_creator, :project_assignee, :project_status, :created_at, :updated_at
json.url project_url(project, format: :json)
