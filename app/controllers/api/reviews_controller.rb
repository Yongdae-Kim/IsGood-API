module Api
  class ReviewsController < ApplicationController
    respond_to :json

    before_action :set_member

    skip_before_filter :verify_authenticity_token, only: :create

    def index
      @reviews = (@member&.reviews || Review)
                 .includes(:avatar)
                 .all
                 .page(params[:page])
                 .order(updated_at: :DESC)
      respond_with(@reviews)
    end

    def create
      @review = Review.new
      @review.member_id = params[:member_id]
      @review.avatar_id = params[:avatar_id]
      @review.content = params[:content]
      @review.grade = params[:grade]
      @review.save!
      respond_with(@review)
    end

    private

    def set_member
      @member = Member.find_by(member_id: params[:member_id])
    end
  end
end
