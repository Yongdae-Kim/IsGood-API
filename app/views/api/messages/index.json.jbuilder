json.array! @messages do |message|
  json.id message.id
  json.review_id message.review_id
  json.writer message.avatar.nickname
  json.content message.content
  json.created_at message.created_at.to_s(:db)
  json.updated_at message.updated_at.to_s(:db)
end
