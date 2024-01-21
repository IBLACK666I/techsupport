json.extract! ticket, :id, :status, :description, :image, :created_at, :updated_at
json.url ticket_url(ticket, format: :json)
