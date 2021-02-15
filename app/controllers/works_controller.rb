class WorksController < ApplicationController

  before_action :set_work, only: %i[show edit update destroy]

  def index
    @works = Work.all
  end

  def show
    @required_skills = @work.skills
  end

  def new
    @work = Work.new
  end

  def create
    Work.create(work_params)
    redirect_to root_path, notice: "登録しました"
  end

  def edit

  end

  def update
    if @work.update!(work_params)
      redirect_to @work, notice: "編集しました"
    else
      render 'edit'
    end
  end

  def destroy
    @work.destroy
    redirect_to root_path, notice: "削除しました"
  end


  private

  def set_work
    @work = Work.find(params[:id])
  end

  def work_params
    params.require(:work).permit(:name, :content, :user_name, :required_skill, :start_time, :end_time, :priority, { :skill_ids => [] })
  end
end
