class Public::HashtagsController < ApplicationController
  before_action :set_q, only: [:search]

  def search
    @post_results = @q.result
  end

  private

  def hashtag_params
    params.require(:hashtag).permit(:hashname)
  end

  def set_q
    @q = Hashtag.ransack(params[:q])
  end
end
