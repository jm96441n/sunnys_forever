json.extract! admin_event, :id, :date, :location, :location_url, :time, :ticket_url, :details, :created_at, :updated_at
json.url admin_event_url(admin_event, format: :json)
