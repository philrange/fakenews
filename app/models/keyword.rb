class Keyword < ActiveRecord::Base
	has_and_belongs_to_many :categories
	has_and_belongs_to_many :pictures

end
