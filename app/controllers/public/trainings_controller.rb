class Public::TrainingsController < ApplicationController
  def index
    @trainings = Training.all.page(params[:page]).per(5)
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
      flash.now[:notice] = "トレーニングデータを追加できません。"
      render :new
    end
  end

  def edit
    @training = Training.find(params[:id])
  end

  def update
    @training = Training.find(params[:id])
    if @training.update(training_params)
      redirect_to trainings_path(@training.id), notice: "トレーニングデータを更新しました。"
    else
      flash.now[:notice] = "トレーニングデータを更新できません。"
      render :edit
    end
  end

  def destroy
    @training = Training.find(params[:id])
    if @training.destroy
      redirect_to trainings_path, notice:"トレーニングデータを削除しました。"
    else
      @trainings = Training.all.page(params[:page]).per(5)
      flash.now[:notice] = "投稿削除できません"
      render :index
    end
  end

  private

  def training_params
    params.require(:training).permit(:name, :set, :weight, :repetition, :start_time)
  end

end
