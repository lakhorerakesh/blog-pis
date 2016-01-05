class Post < ActiveRecord::Base
  belongs_to :user

  extend FriendlyId
  friendly_id :title, use: :slugged

  validates_presence_of :title
  validates_presence_of :content
  validates_presence_of :category_id

  # need to implement
  def total_views
    0
  end

end
