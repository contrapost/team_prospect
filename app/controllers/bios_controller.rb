class BiosController < ApplicationController
  def show
    @bios = Bio.where(group_member_id: params[:group_member_id])
    @group_member = GroupMember.find(params[:group_member_id])
  end

  def save
    bio = Bio.new
    bio.paragraph = params[:paragraph]
    bio.group_member_id =  params[:group_member_id]
    bio.save
    respond_to do |format|
      format.html { redirect_to bios_show_path(group_member_id: params[:group_member_id]), notice: 'Paragraph was successfully saved.' }
    end
  end

  def update
    bio = Bio.find(params[:bio_id])
    bio.name = params[:paragraph]
    bio.save
    respond_to do |format|
      format.html { redirect_to bios_show_path(group_member_id: params[:group_member_id]), notice: 'Paragraph was successfully updated.' }
    end
  end

  def delete
    bio = PersonalText.find(params[:bio_id])
    bio.destroy
    respond_to do |format|
      format.html { redirect_to bios_show_path(group_member_id: params[:group_member_id]), notice: 'Paragraph was successfully destroyed.' }
    end
  end
end
