json.array! @regions do |region|
  json.id region.detail_id
  json.name region.code_name
end
