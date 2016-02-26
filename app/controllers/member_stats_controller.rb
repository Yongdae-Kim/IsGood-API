class MemberStatsController < ApplicationController
  before_action :set_member_stat, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @member_stats = MemberStat.all
    respond_with(@member_stats)
  end

  def show
    respond_with(@member_stat)
  end

  def new
    @member_stat = MemberStat.new
    respond_with(@member_stat)
  end

  def edit
  end

  def create
    @member_stat = MemberStat.new(member_stat_params)
    @member_stat.save
    respond_with(@member_stat)
  end

  def update
    @member_stat.update(member_stat_params)
    respond_with(@member_stat)
  end

  def destroy
    @member_stat.destroy
    respond_with(@member_stat)
  end

  private

  def set_member_stat
    @member_stat = MemberStat.find(params[:id])
  end

  def member_stat_params
    params.require(:member_stat).permit(
      :item1_point, :item2_point, :item3_point,
      :item4_point, :item5_point, :member_id
    )
  end
end
