json.array!(@notes) do |note|
  json.extract! note, :owner_id, :text, :title, :upvotes
  json.url note_url(note, format: :json)
end
