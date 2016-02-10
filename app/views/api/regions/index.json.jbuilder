json.array! @regions do |region|
  json.id region.detail_id
  json.title region.code_name
end
