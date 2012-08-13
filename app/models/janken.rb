class Janken < ActiveRecord::Base
  attr_accessible :draw, :kid, :loss, :win
end
