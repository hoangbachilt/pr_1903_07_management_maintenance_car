module ApplicationHelper
  def last_name username
    current_user.username.split.last
  end
end
