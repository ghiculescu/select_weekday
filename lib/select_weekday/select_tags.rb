require 'action_view'

class ActionView::Helpers::FormBuilder
	def select_weekday(method, options = {}, html_options = {})
		wday = -1
		select(method, Date::DAYNAMES.collect {|d| [d, wday += 1]}, options, html_options)
	end
end

module ActionView::Helpers::FormTagHelper
	def select_weekday_tag(name, selected = nil, options = {})
		selected = Date::DAYNAMES.index(Date.weekday(selected)) if !selected.nil?
		wday = -1
		select_tag(name, options_for_select(Date::DAYNAMES.collect {|d| [d, wday += 1]}, selected), options)
	end
end