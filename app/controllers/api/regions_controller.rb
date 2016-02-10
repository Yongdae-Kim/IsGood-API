module Api
  class RegionsController < ApplicationController
    respond_to :json

    def index
      @regions = CommonCode.region_list
      respond_with(@regions)
    end
  end
end
