module ApplicationHelper
  def avatar_url(image)
    image || "http://placehold.it/30x30"
  end

  def item_owner_url(image)
    image || "http://saxonyfineclothing.com/wp-content/uploads/2011/03/TAILOR_1-934x1024.jpg"
  end

  def item_url(category)
    # return item.image if item.image.present?
    if category.to_i == 1
      "http://promtasticorganiser.weebly.com/uploads/1/6/7/9/16795080/7681625_orig.jpg"
    else
      "http://www.cheshireweddinguide.co.uk/wp-content/uploads/2014/11/Men_in_suits.jpg"
    end
  end
end
