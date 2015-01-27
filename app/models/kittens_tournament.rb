class KittensTournament < ActiveRecord::Base
  belongs_to :kitten
  belongs_to :tournament
end
