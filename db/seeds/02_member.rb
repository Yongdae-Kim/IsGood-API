require 'csv'

csv_text = ""

Dir[File.join(Rails.root, 'lib/csv', 'member', '*.csv')].each { |csv| csv_text << File.read(csv) }

csv = CSV.parse(csv_text, :headers => true)
csv.each_with_index do |row, index|
  m = Member.new
  m.name = row['name']
  m.party_id = CommonCode.find_party_id_by_code_name(row['party'])
  m.region_id = CommonCode.find_region_id_by_code_name(row['location'][0,2])
  m.location = row['location']
  m.rank = row['rank']
  m.department = row['department']
  m.address = row['address']
  m.email = row['email']
  m.homepage = row['homepage']
  m.birth = row['birth']
  m.career = row['career']
  m.military = row['military']
  m.save
end
