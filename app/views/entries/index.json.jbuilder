json.array!(@entries) do |entry|
  json.extract! entry, :id, :date, :code, :escalated, :summary, :status, :created_by
  json.url entry_url(entry, format: :json)
end
