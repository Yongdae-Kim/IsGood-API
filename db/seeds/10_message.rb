csv_text = ""

Dir[File.join(Rails.root, 'lib/csv', 'message', '*.csv')].each { |csv| csv_text << File.read(csv) }

csv = CSV.parse(csv_text, :headers => true)
csv.each_with_index do |row, index|
  t = Message.new
  t.review_id = rand(1..Review.all.size)
  t.avatar_id = rand(1..Avatar.all.size)
  t.content = row['content']
  t.save
end
