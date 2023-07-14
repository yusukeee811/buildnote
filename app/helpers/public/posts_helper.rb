module Public::PostsHelper
  def render_with_hashtags(caption)
    caption.gsub(/[#＃][\w\p{Han}ぁ-ヶｦ-ﾟー]+/){|word| link_to word, "/posts/hashtag/#{word.delete("#")}"}.html_safe
  end
end
