json.extract! entry, :id, :entry_category_id, :name, :value, :date, :should_repeat, :repeat_for, :entry_id, :created_at, :updated_at
json.url entry_url(entry, format: :json)
