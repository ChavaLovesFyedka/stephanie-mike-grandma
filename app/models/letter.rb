class Letter < ActiveRecord::Base
  has_many :drafts

  def email
  end

end
