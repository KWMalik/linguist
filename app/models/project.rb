class Project < ActiveRecord::Base
  has_many :project_languages
  has_many :bundles
  has_many :languages, :through => :project_languages
end
