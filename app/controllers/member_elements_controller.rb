class MemberElementsController < ApplicationController
  before_action :set_member_element, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @member_elements = MemberElement.all
    respond_with(@member_elements)
  end

  def show
    respond_with(@member_element)
  end

  def new
    @member_element = MemberElement.new
    respond_with(@member_element)
  end

  def edit
  end

  def create
    @member_element = MemberElement.new(member_element_params)
    @member_element.save
    respond_with(@member_element)
  end

  def update
    @member_element.update(member_element_params)
    respond_with(@member_element)
  end

  def destroy
    @member_element.destroy
    respond_with(@member_element)
  end

  private

  def set_member_element
    @member_element = MemberElement.find(params[:id])
  end

  def member_element_params
    params.require(:member_element).permit(
      :item1_id, :item2_id, :item3_id, :item4_id, :item5_id, :member_id
    )
  end
end
