json.id @member.id
json.name @member.name
json.party @member.party_name
json.constituency @member.constituency
json.rank @member.rank
json.department @member.department
json.address @member.address
json.email @member.email
json.homepage @member.homepage
json.birth @member.birth
json.career @member.career
json.military @member.military
json.crime @member.crime
json.image @member.image_url
json.main_session_attendance @member.member_work.main_session_attendance
json.sub_session_attendance @member.member_work.sub_session_attendance
json.bill_proposal @member.member_work.bill_proposal
json.reviews_count @member.reviews_count
json.reviews_grade_average @member.reviews_grade_average

json.element_stats_count @member.member_stats_count
json.element1 do
  json.name @member.member_element.item1_name
  json.point_average @member.item1_point_average
end
json.element2 do
  json.name @member.member_element.item2_name
  json.point_average @member.item2_point_average
end
json.element3 do
  json.name @member.member_element.item3_name
  json.point_average @member.item3_point_average
end
json.element4 do
  json.name @member.member_element.item4_name
  json.point_average @member.item4_point_average
end
json.element5 do
  json.name @member.member_element.item5_name
  json.point_average @member.item5_point_average
end
