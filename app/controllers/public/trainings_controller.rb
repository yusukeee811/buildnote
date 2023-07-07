class Public::TrainingsController < ApplicationController
  def index
    @trainings = Training.all
  end

  def new
    @traning =Training.new
  end

  def create
    @training = Training.new(traning_params)
    @training.user_id = current_user.id
    if @training.save
      redirect_to traings_path, notice:"トレーニングデータを追加しました。"
    else
      render :new, notice:"トレーニングデータを追加できません。"
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @traning = Traning.find(params[:id])
    @post.destroy
    redirect_to tranings_path, notice:"データを削除しました。"
  end

  private

  def traning_params
    params.require(:training).permit(:name, :weight, :repetition, :set)
  end

end
