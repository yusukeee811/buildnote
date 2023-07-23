class ChangeHashtagsPostsToHashtagPosts < ActiveRecord::Migration[6.1]
  def change
    rename_table :hashtags_posts, :hashtag_posts
  end
end
