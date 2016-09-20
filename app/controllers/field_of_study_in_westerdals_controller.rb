# noinspection RubyClassModuleNamingConvention
class FieldOfStudyInWesterdalsController < ApplicationController
  def show
    @fields_of_studies = FieldOfStudyInWesterdal.all
  end

  def save
    field_of_study = FieldOfStudyInWesterdal.new
    field_of_study.name = params[:name]
    field_of_study.description = params[:description]
    field_of_study.link = params[:link]
    field_of_study.save
    respond_to do |format|
      format.html { redirect_to field_of_study_in_westerdals_show_path, notice: 'Field of study was successfully saved.' }
    end
  end

  def update
    field_of_study = FieldOfStudyInWesterdal.find(params[:field_of_study_id])
    field_of_study.name = params[:name]
    field_of_study.description = params[:description]
    field_of_study.link = params[:link]
    field_of_study.save
    respond_to do |format|
      format.html { redirect_to field_of_study_in_westerdals_show_path, notice: 'Field of study was successfully updated.' }
    end
  end

  def delete
    field_of_study = FieldOfStudyInWesterdal.find(params[:field_of_study_id])
    field_of_study.destroy
    respond_to do |format|
      format.html { redirect_to field_of_study_in_westerdals_show_path, notice: 'Field of study was successfully destroyed.' }
    end
  end
end
