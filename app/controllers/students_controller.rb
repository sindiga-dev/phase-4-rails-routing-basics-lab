class StudentsController < ApplicationController
    def index
        @students = Student.all
        render json: @students
    end
    # Students GET /students/grades returns an array of all students ordered by grade
    def grades
        @students = Student.order(grade: :desc)
        render json: @students
    end
end
