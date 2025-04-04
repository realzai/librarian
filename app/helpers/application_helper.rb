module ApplicationHelper
  def current_user
    Current.session&.user
  end
end
