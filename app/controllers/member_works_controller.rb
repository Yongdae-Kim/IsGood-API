class MemberWorksController < ApplicationController
  before_action :set_member_work, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @member_works = MemberWork.all
    respond_with(@member_works)
  end

  def show
    respond_with(@member_work)
  end

  def new
    @member_work = MemberWork.new
    respond_with(@member_work)
  end

  def edit
  end

  def create
    @member_work = MemberWork.new(member_work_params)
    @member_work.save
    respond_with(@member_work)
  end

  def update
    @member_work.update(member_work_params)
    respond_with(@member_work)
  end

  def destroy
    @member_work.destroy
    respond_with(@member_work)
  end

  private

  def set_member_work
    @member_work = MemberWork.find(params[:id])
  end

  def member_work_params
    params.require(:member_work).permit(
      :main_session_attendance, :sub_session_attendance,
      :bill_proposal, :member_id
    )
  end
end
