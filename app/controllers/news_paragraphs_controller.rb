class NewsParagraphsController < ApplicationController
  def show
    @news_paragraphs = NewsParagraph.where(news_id: params[:news_id])
    @news = News.find(params[:news_id])
  end

  def save
    news_paragraph = NewsParagraph.new
    news_paragraph.paragraph = params[:paragraph]
    news_paragraph.news_id =  params[:news_id]
    news_paragraph.save
    respond_to do |format|
      format.html { redirect_to news_paragraphs_show_path(news_id: params[:news_id]), notice: 'Paragraph was successfully saved.' }
    end
  end

  def update
    news_paragraph = NewsParagraph.find(params[:news_paragraph_id])
    news_paragraph.name = params[:paragraph]
    news_paragraph.save
    respond_to do |format|
      format.html { redirect_to news_paragraphs_show_path(news_id: params[:news_id]), notice: 'Paragraph was successfully updated.' }
    end
  end

  def delete
    news_paragraph = NewsParagraph.find(params[:news_paragraph_id])
    news_paragraph.destroy
    respond_to do |format|
      format.html { redirect_to news_paragraphs_show_path(news_id: params[:news_id]), notice: 'Paragraph was successfully destroyed.' }
    end
  end
end
