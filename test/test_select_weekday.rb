require 'test/unit'
require 'select_weekday'

class SelectWeekdayTest < Test::Unit::TestCase
	def test_select_weekday_string
		assert_equal "Sunday", Date.weekday("Sunday")
		assert_equal "Monday", Date.weekday("Monday")
		assert_equal "Tuesday", Date.weekday("Tuesday")
		assert_equal "Wednesday", Date.weekday("Wednesday")
		assert_equal "Thursday", Date.weekday("Thursday")
		assert_equal "Friday", Date.weekday("Friday")
		assert_equal "Saturday", Date.weekday("Saturday")
		assert_equal nil, Date.weekday("Not A Day")
	end
	def test_select_weekday_int
		assert_equal "Sunday", Date.weekday(0)
		assert_equal "Monday", Date.weekday(1)
		assert_equal "Tuesday", Date.weekday(2)
		assert_equal "Wednesday", Date.weekday(3)
		assert_equal "Thursday", Date.weekday(4)
		assert_equal "Friday", Date.weekday(5)
		assert_equal "Saturday", Date.weekday(6)
		assert_equal nil, Date.weekday(7)
	end
	def test_select_weekday_int_string
		assert_equal "Sunday", Date.weekday("0")
		assert_equal "Monday", Date.weekday("1")
		assert_equal "Tuesday", Date.weekday("2")
		assert_equal "Wednesday", Date.weekday("3")
		assert_equal "Thursday", Date.weekday("4")
		assert_equal "Friday", Date.weekday("5")
		assert_equal "Saturday", Date.weekday("6")
		assert_equal nil, Date.weekday("7")
	end
end