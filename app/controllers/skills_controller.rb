class SkillsController < ApplicationController
  def show
    @skills = Skill.where(group_member_id: params[:group_member_id])
    @group_member = GroupMember.find(params[:group_member_id])
  end

  def save
    skill = Skill.new
    skill.name = params[:name]
    skill.group_member_id =  params[:group_member_id]
    skill.save
    respond_to do |format|
      format.html { redirect_to skills_show_path(group_member_id: params[:group_member_id]), notice: 'Skill was successfully saved.' }
    end
  end

  def update
    skill = Skill.find(params[:skill_id])
    skill.name = params[:name]
    skill.save
    respond_to do |format|
      format.html { redirect_to skills_show_path(group_member_id: params[:group_member_id]), notice: 'Skill was successfully updated.' }
    end
  end

  def delete
    skill = Skill.find(params[:skill_id])
    skill.destroy
    respond_to do |format|
      format.html { redirect_to skills_show_path(group_member_id: params[:group_member_id]), notice: 'Skill was successfully destroyed.' }
    end
  end
end
