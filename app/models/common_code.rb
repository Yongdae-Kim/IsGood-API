class CommonCode < ApplicationRecord
  # 정당관련
  def self.find_by_party(party_id)
    party_list.where(detail_id: party_id)
  end

  def self.party_list
    where(main_id: 'PARTY')
  end

  def self.find_party_name_by_party_id(party_id)
    find_by_party(party_id).first.code_name
  end

  def self.find_party_id_by_party_name(code_name)
    party_list.where(code_name: code_name).first.detail_id
  end

  # 지역관련
  def self.find_by_region(region_id)
    region_list.where(detail_id: region_id)
  end

  def self.region_list
    where(main_id: 'REGION')
  end

  def self.find_region_name_by_region_id(region_id)
    find_by_region(region_id).first.code_name
  end

  def self.find_region_id_by_region_name(code_name)
    region_list.where(code_name: code_name).first.detail_id
  end

  # 요소관련
  def self.find_by_element(item_id)
    element_list.where(detail_id: item_id)
  end

  def self.element_list
    where(main_id: 'ELEMENT')
  end

  def self.find_element_name_by_element_id(item_id)
    find_by_element(item_id).first.code_name
  end
end
