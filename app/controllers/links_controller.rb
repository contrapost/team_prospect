class LinksController < ApplicationController
  def save_link
    link = Link.new
    link.link_address = params[:link_address]
    link.group_member_id =  params[:group_member_id]
    link.save
    respond_to do |format|
      format.html { redirect_to links_show_links_path(group_member_id: params[:group_member_id]), notice: 'Link was successfully saved.' }
    end
  end

  def update_link
    link = Link.find(params[:link_id])
    link.link_address = params[:link_address]
    link.save
    respond_to do |format|
      format.html { redirect_to links_show_links_path(group_member_id: params[:group_member_id]), notice: 'Link was successfully updated.' }
    end
  end

  def delete_link
    link = Link.find(params[:link_id])
    link.destroy
    respond_to do |format|
      format.html { redirect_to links_show_links_path(group_member_id: params[:group_member_id]), notice: 'Link was successfully destroyed.' }
    end
  end

  def show_links
    @links = Link.where(group_member_id: params[:group_member_id])
    @group_member = GroupMember.find(params[:group_member_id])
  end
end
