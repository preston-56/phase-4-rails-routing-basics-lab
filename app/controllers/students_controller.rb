class StudentsController < ApplicationController
  def index
    students = Student.all
    render json: students
  end

  def grades
    students = Student.all.order(grade: :desc)
    render json: students
  end

  def highest_grade
    student = Student.order(grade: :desc).first
    render json: { 
      first_name: student.first_name, 
      last_name: student.last_name, 
      grade: student.grade 
    }
  end
end
