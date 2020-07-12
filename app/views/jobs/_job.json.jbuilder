json.extract! job, :id, :title, :requirements, :company_logo_url, :description, :expires, :responsibilities, :salary, :created_at, :updated_at
json.url job_url(job, format: :json)
