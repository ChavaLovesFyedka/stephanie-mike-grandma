class Draft < ActiveRecord::Base
  belongs_to :letter
  has_many :draft_variables

end
