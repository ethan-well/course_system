class TeachersController < ApplicationController
  def index
    @teachers = Teacher.all
    render 'index.json.jbuilder'
  end

  #class Teacher has_many :courses, dependent: :destroy
  #删除老师后,老师对应的课程也将删除
  def destroy
    begin
      teacher = Teacher.find(param[:id])
      teacher.destroy!
      message = "删除成功"
    rescue
      message = "删除失败"
    end

    render json: {message: message}
  end
end
