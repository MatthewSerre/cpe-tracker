json.extract! course, :id, :name, :description, :date, :hours, :location, :sponsor, :format, :cost, :cpa, :cia, :cfe, :cisa, :category, :created_at, :updated_at
json.url course_url(course, format: :json)
