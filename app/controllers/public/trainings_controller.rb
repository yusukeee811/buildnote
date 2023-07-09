class Public::TrainingsController < ApplicationController
  def index
    @trainings = Training.all
  end

  def new
    @training = Training.new
  end

  def create
    @training = Training.new(training_params)
    @training.user_id = current_user.id
    if @training.save
      redirect_to trainings_path, notice:"トレーニングデータを追加しました。"
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @training = Training.find(params[:id])
    @training.destroy
    redirect_to tranings_path, notice:"データを削除しました。"
  end

  private

  def training_params
    params.require(:training).permit(:name, :set, :weight, :reptition)
  end

end
