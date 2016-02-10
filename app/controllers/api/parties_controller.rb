module Api
  class PartiesController < ApplicationController
    respond_to :json

    def index
      @parties = CommonCode.party_list
      respond_with(@parties)
    end
  end
end
