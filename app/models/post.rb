class Post < ActiveRecord::Base
  belongs_to :user

  validates_presense_of :title
  validates_presense_of :content
  validates_presense_of :category_id

  # need to implement
  def total_views
    0
  end

end
