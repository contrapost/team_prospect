class EducationsController < ApplicationController
  def show
    @educations = Education.where(group_member_id: params[:group_member_id])
    @group_member = GroupMember.find(params[:group_member_id])
  end

  def save
    education = Education.new
    education.start = params[:start]
    education.end = params[:end]
    education.institution_name = params[:institution_name]
    education.field_of_study = params[:field_of_study]
    education.group_member_id =  params[:group_member_id]
    education.save
    respond_to do |format|
      format.html { redirect_to educations_show_path(group_member_id: params[:group_member_id]), notice: 'Education was successfully saved.' }
    end
  end

  def update
    education = Education.find(params[:education_id])
    education.start = params[:start]
    education.end = params[:end]
    education.institution_name = params[:institution_name]
    education.field_of_study = params[:field_of_study]
    education.group_member_id =  params[:group_member_id]
    education.save
    respond_to do |format|
      format.html { redirect_to educations_show_path(group_member_id: params[:group_member_id]), notice: 'Education was successfully updated.' }
    end
  end

  def delete
    education = Education.find(params[:education_id])
    education.destroy
    respond_to do |format|
      format.html { redirect_to educations_show_path(group_member_id: params[:group_member_id]), notice: 'Education was successfully destroyed.' }
    end
  end
end
