class LessonsController < ApplicationController
  before_action :authenticate_user!
  before_action :current_user_enrolled_in?
  def show
  end

  def current_user_enrolled_in?
    if ! current_user.enrolled_in?(current_lesson.section.course)
      redirect_to courses_path(current_lesson.section.course), alert: 'You must be enrolled to view this lesson'

    end

  end

  private

  helper_method :current_lesson

  def current_lesson
    @current_lesson ||= Lesson.find(params[:id])
  end

end

