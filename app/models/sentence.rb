class Sentence < ActiveRecord::Base
  belongs_to :template
  has_many :variables
end
