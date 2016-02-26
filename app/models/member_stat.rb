class MemberStat < ApplicationRecord
  after_create :sum_member_item_point_total
  before_update :modify_member_item_point_total
  before_destroy :subtract_member_item_point_total

  belongs_to :member, counter_cache: true

  private

  def sum_member_item_point_total
    add_member_item_point
    member.save!
  end

  def modify_member_item_point_total
    @member_stat = MemberStat.find(member_stat_id)
    remove_member_item_point(@member_stat)
    add_member_item_point
    member.save!
  end

  def subtract_member_item_point_total
    remove_member_item_point(self)
    member.save!
  end

  def add_member_item_point
    member.item1_point_total += item1_point
    member.item2_point_total += item2_point
    member.item3_point_total += item3_point
    member.item4_point_total += item4_point
    member.item5_point_total += item5_point
  end

  def remove_member_item_point(member_stat)
    member.item1_point_total -= member_stat.item1_point
    member.item2_point_total -= member_stat.item1_point
    member.item3_point_total -= member_stat.item1_point
    member.item4_point_total -= member_stat.item1_point
    member.item5_point_total -= member_stat.item1_point
  end
end
