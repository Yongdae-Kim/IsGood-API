Member.all.each_with_index do |member, index|
  @elements = CommonCode.element_list
  @random_nums = (1..@elements.size).to_a.sample(5)
  t = MemberElement.new
  t.member_id = member.member_id
  t.item1_id = @random_nums[0]
  t.item2_id = @random_nums[1]
  t.item3_id = @random_nums[2]
  t.item4_id = @random_nums[3]
  t.item5_id = @random_nums[4]
  t.save
end
