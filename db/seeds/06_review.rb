csv_text = ""

Dir[File.join(Rails.root, 'lib/csv', 'review', '*.csv')].each { |csv| csv_text << File.read(csv) }

csv = CSV.parse(csv_text, :headers => true)
csv.each_with_index do |row, index|
  t = Review.new
  t.member_id = rand(1..Member.all.size)
  t.avatar_id = rand(1..Avatar.all.size)
  t.content = row['content']
  t.grade = row['grade']
  t.save
end
