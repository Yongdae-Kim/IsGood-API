class CommonCode < ApplicationRecord
  def self.find_by_party(party_id)
    where(main_id: 'PARTY').where(detail_id: party_id)
  end
end
