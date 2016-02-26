class MemberElement < ApplicationRecord
  belongs_to :member

  def item1_name
    CommonCode.find_element_name_by_element_id(item1_id) if item1_id.present?
  end

  def item2_name
    CommonCode.find_element_name_by_element_id(item2_id) if item2_id.present?
  end

  def item3_name
    CommonCode.find_element_name_by_element_id(item3_id) if item3_id.present?
  end

  def item4_name
    CommonCode.find_element_name_by_element_id(item4_id) if item4_id.present?
  end

  def item5_name
    CommonCode.find_element_name_by_element_id(item5_id) if item5_id.present?
  end
end
