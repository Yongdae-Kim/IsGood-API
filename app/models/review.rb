class Review < ApplicationRecord
  after_create :sum_member_reviews_grade_total
  before_update :modify_member_reviews_grade_total
  before_destroy :subtract_member_reviews_grade_total

  belongs_to :avatar, counter_cache: true
  belongs_to :member, counter_cache: true
  has_many :messages

  private

  def sum_member_reviews_grade_total
    member.reviews_grade_total += grade
    member.save!
  end

  def modify_member_reviews_grade_total
    member.reviews_grade_total -= Review.find(review_id).grade
    member.reviews_grade_total += grade
    member.save!
  end

  def subtract_member_reviews_grade_total
    member.reviews_grade_total -= grade
    member.save!
  end
end
