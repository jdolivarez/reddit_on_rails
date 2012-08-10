class Vote < ActiveRecord::Base
belongs_to :user
belongs_to :link
  attr_accessible :link_id, :user_id, :up

  validates :user_id, :uniqueness => { :scope => :link_id }
end