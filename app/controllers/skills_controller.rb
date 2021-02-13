class SkillsController < ApplicationController
  before_action :set_skill, only: %i[show edit update destroy]

  def index
    @skills = Skill.all
  end

  def show

  end

  def new
    @skill = Skill.new
  end

  def create
    Skill.create(skill_params)
    redirect_to skills_path, notice: "登録しました"
  end

  def edit

  end

  def update
    if @skill.update!(skill_params)
      redirect_to @skill, notice: "編集しました"
    else
      render 'edit'
    end
  end

  def destroy
    @skill.destroy
    redirect_to skills_path, notice: "削除しました"
  end


  private

  def set_skill
    @skill = Skill.find(params[:id])
  end

  def skill_params
    params.require(:skill).permit(:name, :classification, :content, :certification)
  end
end
