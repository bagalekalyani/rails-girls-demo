json.array!(@actors) do |actor|
  json.extract! actor, :id, :fname, :lname
  json.url actor_url(actor, format: :json)
end
