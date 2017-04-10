class StudentsController < ApplicationController
  def show
    begin
      @student = Student.find(params[:id])
      render 'show.json.jbuilder'
    rescue
      render json: {message: '用户不存在'}
    end
  end
end
