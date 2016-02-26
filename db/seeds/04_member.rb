require 'csv'

csv_text = ""

Dir[File.join(Rails.root, 'lib/csv', 'member', '*.csv')].each { |csv| csv_text << File.read(csv) }

csv = CSV.parse(csv_text, :headers => true)
csv.each_with_index do |row, index|
  m = Member.new
  m.name = row['name']
  m.party_id = CommonCode.find_party_id_by_party_name(row['party'])
  m.region_id = CommonCode.find_region_id_by_region_name(row['constituency'][0,2])
  
  location = Location.find_by_si_and_gu(row['constituency'][0,2], row['constituency'][2,2])
  if location.nil?
    location = Location.find_by_si(row['constituency'][0,2])
  end

  m.location_id = location.id
  m.constituency = row['constituency']
  m.rank = row['rank']
  m.department = row['department']
  m.address = row['address']
  m.email = row['email']
  m.homepage = row['homepage']
  m.birth = row['birth']
  m.career = row['career']
  m.military = row['military']
  m.crime = row['crime']
  m.save
end
