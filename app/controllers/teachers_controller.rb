class TeachersController < ApplicationController
  def index
    @teachers = Teacher.all
    render 'index.json.jbuilder'
  end

  #class Teacher has_many :courses, dependent: :destroy
  #删除老师后,老师对应的课程也将删除
  def destroy
    begin
      teacher = Teacher.find(params[:id])
      teacher.destroy!
      flash[:error] = "删除成功"
    rescue
      flash[:success] = "删除成功"
    end

    redirect_to :back
  end
end
