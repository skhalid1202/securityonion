module Onion
  class ApplicationRecord < ActiveRecord::Base
	  establish_connection :"#{Rails.env}_onion"

	  def self.abstract_class?
	    true # So it gets its own connection
	  end
	end
end