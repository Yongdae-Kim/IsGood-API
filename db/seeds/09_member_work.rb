csv_text = ""

Dir[File.join(Rails.root, 'lib/csv', 'member_work', '*.csv')].each { |csv| csv_text << File.read(csv) }

csv = CSV.parse(csv_text, :headers => true)
csv.each_with_index do |row, index|
  t = MemberWork.new
  t.member_id = index + 1
  t.main_session_attendance = row['main_session_attendance']
  t.sub_session_attendance = row['sub_session_attendance']
  t.bill_proposal = row['bill_proposal']
  t.save
end
