json.page @reviews.current_page
json.total @reviews.total_pages
json.records @reviews.size
json.rows @reviews do |review|
  json.id review.id
  json.member_id review.member_id
  json.writer review.avatar.nickname
  json.content review.content
  json.grade review.grade
  json.messages_count review.messages_count
  json.created_at review.created_at.to_s(:db)
  json.updated_at review.updated_at.to_s(:db)
end
