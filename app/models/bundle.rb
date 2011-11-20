class Bundle < ActiveRecord::Base
  belongs_to :project
  has_many :language_packs
end
