class Public::TrainingsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_q, only: [:search]

  def index
    @trainings = current_user.trainings.page(params[:page]).per(5)
  end

  def new
    @training = Training.new
  end

  def create
    @training = Training.new(training_params)
    @training.user_id = current_user.id
    if @training.save
      redirect_to trainings_path, notice:"トレーニングデータを追加しました"
    else
      @error_message = @training.errors.full_messages.join(', ')
      render :new
    end
  end

  def edit
    @training = Training.find(params[:id])
  end

  def update
    @training = Training.find(params[:id])
    if @training.update(training_params)
      redirect_to trainings_path(@training.id), notice: "トレーニングデータを更新しました"
    else
      flash.now[:alert] = "トレーニングデータ更新に失敗しました"
      render :edit
    end
  end

  def destroy
    @training = Training.find(params[:id])
    if @training.destroy
      redirect_to trainings_path, notice:"トレーニングデータを削除しました"
    else
      @trainings = current_user.trainings.page(params[:page]).per(5)
      flash.now[:alert] = "トレーニングデータ削除に失敗しました"
      render :index
    end
  end

  def search
    @training_results = @q.result
  end

  def graph
    @trainings = current_user.trainings
  end

  private

  def training_params
    params.require(:training).permit(:name, :set, :weight, :repetition, :start_time)
  end

  def set_q
    @q = Training.ransack(params[:q])
  end

end
