module ApplicationHelper
  def avatar_url(image)
    image || "http://placehold.it/30x30"
  end
end
