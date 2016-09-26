class PersonalTextsController < ApplicationController
  def show
    @personal_texts = PersonalText.where(group_member_id: params[:group_member_id])
    @group_member = GroupMember.find(params[:group_member_id])
  end

  def save
    personal_text = PersonalText.new
    personal_text.paragraph = params[:paragraph]
    personal_text.group_member_id =  params[:group_member_id]
    personal_text.save
    respond_to do |format|
      format.html { redirect_to personal_texts_show_path(group_member_id: params[:group_member_id]), notice: 'Paragraph was successfully saved.' }
    end
  end

  def update
    personal_text = PersonalText.find(params[:personal_text_id])
    personal_text.paragraph = params[:paragraph]
    personal_text.save
    respond_to do |format|
      format.html { redirect_to personal_texts_show_path(group_member_id: params[:group_member_id]), notice: 'Paragraph was successfully updated.' }
    end
  end

  def delete
    personal_text = PersonalText.find(params[:personal_text_id])
    personal_text.destroy
    respond_to do |format|
      format.html { redirect_to personal_texts_show_path(group_member_id: params[:group_member_id]), notice: 'Paragraph was successfully destroyed.' }
    end
  end
end
