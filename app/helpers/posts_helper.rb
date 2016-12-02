module PostsHelper
  def user_is_authorized_for_post_admin?(post)
    current_user && (current_user == post.user || current_user.admin?)
  end
  
  def user_is_authorized_for_post_moderator?(post)
    current_user && (current_user == post.user || current_user.moderator?)
  end

end
