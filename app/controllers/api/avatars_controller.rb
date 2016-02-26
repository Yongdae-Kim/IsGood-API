module Api
  class AvatarsController < ApplicationController
    include AvatarsHelper

    respond_to :json

    skip_before_filter :verify_authenticity_token, only: :create

    def create
      @avatar = Avatar.new
      @avatar.nickname = AvatarsHelper.gen_unique_value
      @avatar.save!
      respond_with(@avatar)
    end
  end
end
