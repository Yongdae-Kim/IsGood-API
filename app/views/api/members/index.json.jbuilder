json.page @members.current_page
json.total @members.total_pages
json.records @members.size
json.rows @members do |member|
  json.id member.member_id
  json.name member.name
  json.party member.party_name
  json.constituency member.constituency
  json.rank member.rank
  json.department member.department
  json.image member.image_url
  json.reviews_count member.reviews_count
  json.reviews_grade_average member.reviews_grade_average
end
