class WorkExperiencesController < ApplicationController
  def show
    @work_experiences = WorkExperience.where(group_member_id: params[:group_member_id])
    @group_member = GroupMember.find(params[:group_member_id])
  end

  def save
    work_experience = WorkExperience.new
    work_experience.start = params[:start]
    work_experience.end = params[:end]
    work_experience.company = params[:company]
    work_experience.position = params[:position]
    work_experience.optional_info = params[:optional_info]
    work_experience.group_member_id =  params[:group_member_id]
    work_experience.save
    respond_to do |format|
      format.html { redirect_to work_experiences_show_path(group_member_id: params[:group_member_id]), notice: 'Work experience was successfully saved.' }
    end
  end

  def update
    work_experience = WorkExperience.find(params[:work_experience_id])
    work_experience.start = params[:start]
    work_experience.end = params[:end]
    work_experience.company = params[:company]
    work_experience.position = params[:position]
    work_experience.optional_info = params[:optional_info]
    work_experience.group_member_id =  params[:group_member_id]
    work_experience.save
    respond_to do |format|
      format.html { redirect_to work_experiences_show_path(group_member_id: params[:group_member_id]), notice: 'Work experience was successfully updated.' }
    end
  end

  def delete
    work_experience = WorkExperience.find(params[:work_experience_id])
    work_experience.destroy
    respond_to do |format|
      format.html { redirect_to work_experiences_show_path(group_member_id: params[:group_member_id]), notice: 'Work experience was successfully destroyed.' }
    end
  end
end
