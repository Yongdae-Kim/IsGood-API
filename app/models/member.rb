class Member < ApplicationRecord
  after_initialize :set_default_values

  paginates_per 20

  belongs_to :location

  has_one :image, as: :imageable
  has_one :member_element
  has_one :member_work

  has_many :reviews
  has_many :member_stats

  scope :find_by_region, lambda { |region|
    where(region_id: region) if region.present?
  }

  scope :find_by_party, lambda { |party|
    where(party_id: party) if party.present?
  }

#  scope :order_by_location, lambda { |lat, lng|
#    query = [lat,lng].compact.join(',')
#    city = Geocoder.search(query).first.city[0..1]
#    reion_id = CommonCode.find_region_id_by_region_name(city)
#  }

  def latitude
    location.latitude
  end

  def longitude
    location.longitude
  end

  def image_url
    image.image.url if image.present?
  end

  def party_name
    CommonCode.find_party_name_by_party_id(party_id) if party_id.present?
  end

  def reviews_grade_average
    if reviews_grade_total != 0
      (reviews_grade_total / reviews_count).round(1)
    else
      0
    end
  end

  def item1_point_average
    calculate_item_point_average(item1_point_total)
  end

  def item2_point_average
    calculate_item_point_average(item2_point_total)
  end

  def item3_point_average
    calculate_item_point_average(item3_point_total)
  end

  def item4_point_average
    calculate_item_point_average(item4_point_total)
  end

  def item5_point_average
    calculate_item_point_average(item5_point_total)
  end

  def calculate_item_point_average(item_point_total)
    item_point_total != 0 ? (item_point_total / member_stats_count).round : 0
  end

  private

  def set_default_values
    self.email ||= '이메일 없음'
    self.homepage ||= '홈페이지 없음'
    self.birth ||= '출생년도 사항 없음'
    self.career ||= '학력/경력 사항 없음'
    self.military ||= '병역 사항 없음'
    self.crime ||= '전과 사항 없음'
  end
end
