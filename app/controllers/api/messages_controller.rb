module Api
  class MessagesController < ApplicationController
    respond_to :json

    before_action :set_review

    skip_before_filter :verify_authenticity_token, only: :create

    def index
      @messages = (@review&.messages || Message)
                  .includes(:avatar)
                  .all
                  .page(params[:page])
                  .order(updated_at: :ASC)
      respond_with(@messages)
    end

    def create
      @message = Message.new
      @message.review_id = params[:review_id]
      @message.avatar_id = params[:avatar_id]
      @message.content = params[:content]
      @message.save!
      respond_with(@message)
    end

    private

    def set_review
      @member = Member.find_by(member_id: params[:member_id])
      @review = @member.reviews.find_by(review_id: params[:review_id])
    end 
  end
end
