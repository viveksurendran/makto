json.extract! job, :id, :jobtitle, :jobrole, :jobresponsibility, :created_at, :updated_at
json.url job_url(job, format: :json)
