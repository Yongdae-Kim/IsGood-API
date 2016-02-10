json.array! @parties do |party|
  json.id party.detail_id
  json.name party.code_name
end
