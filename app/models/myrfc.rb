class Myrfc < ActiveRecord::Base
	def to_param
    "#{id}-#{rfc}"
  end
end
