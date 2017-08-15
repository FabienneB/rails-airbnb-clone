module UsersHelper
  def avatar_url(user)
    user.facebook_picture_url.nil? "http://placehold.it/30x30": user.facebook_picture_url
  end
end
