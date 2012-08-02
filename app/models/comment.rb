class Comment < ActiveRecord::Base
  attr_accessible :comment

  belongs_to :excerpt,
             :class_name => "Excerpt",
             :foreign_key => "excerpt_id"

  belongs_to :author,
             :class_name => "User",
             :foreign_key => "user_id"

  validates :comment, :presence => true,
                      :length => { :in => 1..200 }

end
