class Kitten < ActiveRecord::Base
	has_and_belongs_to_many :tournaments
end
