csv_text = ""

Dir[File.join(Rails.root, 'lib/csv', 'member_stat', '*.csv')].each { |csv| csv_text << File.read(csv) }

csv = CSV.parse(csv_text, :headers => true)
csv.each_with_index do |row, index|
  t = MemberStat.new
  t.member_id = rand(1..Member.all.size)
  t.item1_point = row['item1_point']
  t.item2_point = row['item2_point']
  t.item3_point = row['item3_point']
  t.item4_point = row['item4_point']
  t.item5_point = row['item5_point']
  t.save
end
