class Language < ActiveRecord::Base
  has_many :project_languages
  has_many :projects, :through => :project_languages
end
