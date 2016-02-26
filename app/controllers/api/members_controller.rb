module Api
  class MembersController < ApplicationController
    respond_to :json

    def index
      @members = Member
                 .find_by_region(params[:region])
                 .find_by_party(params[:party])
                 .includes(:image, :reviews)
                 .all
                 .page(params[:page])
      respond_with(@members)
    end

    def show
      @member = Member.find(params[:id])
      respond_with(@member)
    end

    def autocomplete
      @members = Member.all
      respond_with(@members)
    end
  end
end
