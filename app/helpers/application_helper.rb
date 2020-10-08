module ApplicationHelper
  def avatar_url (user)
    return user.profile_photo if user.profile_photo
    gravatar_id = Digest::MD5::hexdigest(user.email).downcase
    "https://www.gravatar.com/avatar/#{gravatar_id}.jpg"
  end
end
