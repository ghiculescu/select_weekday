require 'active_support'

class Date
	# weekday "Monday" => "Monday"
	# weekday 1 => "Monday"
	# weekday "1" => "Monday"
	def self.weekday(idx)
		int = idx.to_i
		if idx.is_a?(String)
			return idx if Date::DAYNAMES.include?(idx)
			
			# if invalid int index, eg. if idx == "not a day"
			return nil if (idx != "0" && int == 0)
		end
		return Date::DAYNAMES[int]
	end

	def self.parse_weekday(idx)		
		parse(weekday(idx))
	end
end

class DateTime
	def self.parse_weekday(idx)
		parse(Date.weekday(idx))
	end
end

class ActiveSupport::TimeZone
	def parse_weekday(idx)
		parse(Date.weekday(idx))
	end
end