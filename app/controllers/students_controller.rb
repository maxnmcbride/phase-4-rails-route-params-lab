class StudentsController < ApplicationController

  def index
    students = Student.all
    render json: students
  end

  def show
    # we want to access the id from students
    students_id = Student.find_by(id: params[:id])
    render json: students_id
    byebug
  end
end
