class CommonCode < ApplicationRecord
  def self.find_by_party(party_id)
    party_list.where(detail_id: party_id)
  end

  def self.party_list
    where(main_id: 'PARTY')
  end

  def self.find_by_region(region_id)
    region_list.where(detail_id: region_id)
  end

  def self.region_list
    where(main_id: 'REGION')
  end
end
